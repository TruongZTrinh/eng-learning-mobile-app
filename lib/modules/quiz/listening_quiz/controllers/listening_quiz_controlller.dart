import 'package:english_learning_app/modules/quiz/listening_quiz/data/listening_lesson_quiz_data.dart';
import 'package:english_learning_app/modules/quiz/listening_quiz/models/listening_question_model.dart';
import 'package:english_learning_app/modules/quiz/listening_quiz/models/listening_script_model.dart';
import 'package:english_learning_app/shared/audio_helper.dart';
import 'package:english_learning_app/shared/speech_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListeningQuizController extends GetxController {
  // Track the status of the button
  RxBool isButtonEnabled = true.obs;

  /// Các câu hỏi trong bài quiz
  RxInt currentQuestionIndex = 0.obs;
  int totalQuestions = 5;

  // Các câu nói trong bài quiz
  RxInt currentScriptIndex = 0.obs;
  RxString selectedAnswer = "".obs;
  RxBool isAnswerCorrect = false.obs;
  RxList<ListeningScriptModel> visibleScripts = <ListeningScriptModel>[].obs;
  late List<ListeningScriptModel> listSpeakingScripts;

  // Tìm thấy câu hỏi liên quan
  RxBool foundRelatedQuestion = false.obs;

  final quiz = listeningQuizList[0];
  List<ListeningScriptModel> get scripts => quiz.scripts;
  List<ListeningQuestionModel> get questions => quiz.questions ?? [];

  SpeechService speechService = Get.put(SpeechService());
  RxList<bool> isSpeakingList = <bool>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeScripts(scripts);
  }

  @override
  void onClose() {
    speechService.stopSpeaking();
    super.onClose();
  }

  void initializeScripts(List<ListeningScriptModel> listeningScripts) {
    listSpeakingScripts = listeningScripts;
    currentScriptIndex.value = 0;
    visibleScripts.clear();
    isSpeakingList.clear();

    if (listSpeakingScripts.isNotEmpty) {
      // visibleScripts.add(listSpeakingScripts.first);
      isSpeakingList.addAll(List.filled(listSpeakingScripts.length, false));
    }
    // print(listSpeakingScripts);
  }

  Future<void> playScriptsUntilQuestion() async {
    if (!isButtonEnabled.value)
      return; // If the button is disabled, can't press

    isButtonEnabled.value = false; // Disable the button when start
    foundRelatedQuestion.value = false; // Reset before start

    for (var i = currentScriptIndex.value; i < scripts.length; i++) {
      visibleScripts.add(scripts[i]);

      isSpeakingList[i] = true;
      await speechService.speak(scripts[i].transcript, scripts[i].speaker);
      isSpeakingList[i] = false;

      // Kiểm tra nếu script liên quan đến câu hỏi
      final relatedQuestion = questions.firstWhereOrNull(
        (question) => question.scriptId.contains(scripts[i].id),
      );

      if (relatedQuestion != null) {
        // Dừng lại và hiển thị câu hỏi
        foundRelatedQuestion.value = true;
        currentScriptIndex.value = i; // Cập nhật chỉ số script hiện tại
        currentQuestionIndex.value = questions.indexOf(relatedQuestion);

        // Chờ người dùng trả lời đúng
        while (!isAnswerCorrect.value) {
          await Future.delayed(const Duration(milliseconds: 500));
        }
        isAnswerCorrect.value = false;
        foundRelatedQuestion.value = false;
      }
      // Thêm khoảng dừng giữa các câu
      currentScriptIndex.value++;
      await Future.delayed(const Duration(milliseconds: 700));
    }
    Get.snackbar(
      "Chúc mừng bạn vượt qua quiz!",
      "Bấm nút dưới để quay về",
      onTap: (snack) {
        Get.back();
        Get.back();
      },
    );
  }

  void addNextScript() {
    if (currentScriptIndex.value < scripts.length) {
      visibleScripts.add(scripts[currentScriptIndex.value]);
      currentScriptIndex.value++;
    }
  }

  void nextScript() {
    // print(scripts);
    if (currentScriptIndex.value < scripts.length - 1) {
      currentScriptIndex.value++;
      speechService.speak(scripts[currentScriptIndex.value].transcript,
          scripts[currentScriptIndex.value].speaker);
      isAnswerCorrect.value = false;
      foundRelatedQuestion.value = false;
    }
  }

  void nextQuestion() {
    if (currentQuestionIndex.value < questions.length - 1) {
      // currentQuestionIndex.value++;
      Future.delayed(const Duration(milliseconds: 500), () {
        selectedAnswer.value = ''; // Reset đáp án
        isAnswerCorrect.value = false; // Reset trạng thái
      });
    }
  }

  void checkAnswer(String answerId) async {
    selectedAnswer.value = answerId;
    isAnswerCorrect.value =
        questions[currentQuestionIndex.value].correctAnswer == answerId;

    if (isAnswerCorrect.value == true) {
      AudioHelper.playAudioFromAsset("correct_sound.mp3");
      nextQuestion();
    } else {
      AudioHelper.playAudioFromAsset("wrong_sound.mp3");
      Get.bottomSheet(Container(
          height: 150,
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Đáp án sai. Vui lòng thử lại",
                  style: TextStyle(fontSize: 18, color: Colors.red),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.back(); // Đóng BottomSheet
                    Get.back(); // Quay về trang trước
                  },
                  child: const Text("Quay về"),
                ),
              ],
            ),
          )));
    }
  }

  double calculateScriptDuration(String transcript, double wordsPerSecond) {
    int wordCount = transcript.split(' ').length;
    return wordCount / wordsPerSecond;
  }
}
