import 'package:english_learning_app/modules/quiz/listening_quiz/data/listening_lesson_quiz_data.dart';
import 'package:english_learning_app/modules/quiz/listening_quiz/models/listening_question_model.dart';
import 'package:english_learning_app/modules/quiz/listening_quiz/models/listening_script_model.dart';
import 'package:english_learning_app/shared/audio_helper.dart';
import 'package:english_learning_app/shared/speech_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListeningQuizController extends GetxController {
  /// Các câu hỏi trong bài quiz
  RxInt currentQuestionIndex = 0.obs;
  int totalQuestions = 5;

  RxDouble progress = 0.0.obs;

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

  @override
  void onClose() {
    speechService.stopSpeaking();
    super.onClose();
  }

  void initializeScripts(List<ListeningScriptModel> listeningScripts) {
    listSpeakingScripts = listeningScripts;
    currentScriptIndex.value = 0;
    visibleScripts.clear();

    if (listSpeakingScripts.isNotEmpty) {
      visibleScripts.add(listSpeakingScripts.first);
    }
    // print(listSpeakingScripts);
  }

  Future<void> playScriptsUntilQuestion() async {
    foundRelatedQuestion.value = false; // Reset trước khi bắt đầu

    for (var i = currentScriptIndex.value; i < scripts.length; i++) {
      // visibleScripts.add(listSpeakingScripts[currentScriptIndex.value]);
      // print(" VisibleScripts:  ${visibleScripts.length}");

      final script = scripts[i];
      updateProgress((i + 1) / (scripts.length + 1));
      // Đọc script
      await speechService.speak(script.transcript, script.speaker);

      // Kiểm tra nếu script liên quan đến câu hỏi
      final relatedQuestion = questions.firstWhereOrNull(
        (question) => question.scriptIds.contains(script.id),
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
      await Future.delayed(const Duration(milliseconds: 500));
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
    // if (currentScriptIndex)
    if (currentScriptIndex < listSpeakingScripts.length - 1) {
      currentScriptIndex++;
      visibleScripts.add(listSpeakingScripts[currentScriptIndex.value]);
      speechService.speak(scripts[currentScriptIndex.value].transcript,
          scripts[currentScriptIndex.value].speaker);
      foundRelatedQuestion.value = false;
      isAnswerCorrect.value = false;
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

  void updateProgress(double value) {
    progress.value = value;
  }
}
