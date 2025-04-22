import 'dart:convert';
import 'package:english_learning_app/constants/api_constants.dart';
import 'package:english_learning_app/modules/quiz/vocabulary_quiz/models/vocab_question_model.dart';
import 'package:english_learning_app/modules/quiz/vocabulary_quiz/models/vocabulary_model.dart';
import 'package:english_learning_app/modules/quiz/vocabulary_quiz/models/vocabulary_quiz_topic.dart';
import 'package:english_learning_app/modules/quiz/vocabulary_quiz/utils/vocab_question_generator.dart';
import 'package:english_learning_app/modules/quiz/vocabulary_quiz/widgets/vocab_select_image_widget.dart';
import 'package:english_learning_app/modules/quiz/vocabulary_quiz/widgets/vocab_select_word_widget.dart';
import 'package:english_learning_app/shared/app_colors.dart';
import 'package:english_learning_app/shared/audio_helper.dart';
import 'package:english_learning_app/shared/token_service.dart';
import 'package:english_learning_app/widgets/countdown_circular_progress_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class VocabQuizController extends GetxController {
  // Các biến của page
  final PageController pageController = PageController();
  var currentPageIndex = 0.obs;
  var selectedTopicId = 0.obs;
  var selectedTopicName = ''.obs;
  var isLoading = false.obs;
  RxList<VocabularyQuizTopic> topics = <VocabularyQuizTopic>[].obs;
  RxList<VocabularyModel> vocabList = <VocabularyModel>[].obs;

  // Các biến của phần
  var currentPartIndex = 1.obs;

  // Các biến của câu hỏi
  var currentQuestionIndex = 0.obs;
  late int totalQuestions;
  RxList<VocabQuestionModel> questions = <VocabQuestionModel>[].obs;

  // Điểm
  var questionScore = 0.obs;

  // Trạng thái lựa chọn
  var selectedAnswer = RxnString();
  var isCorrect = false.obs;
  var showAnswerFeedback = false.obs;

  @override
  void onInit() {
    super.onInit();
    isLoading.value = true;
    initLoading();
    fetchVocabularyTopics();
  }

  Future<void> initLoading() {
    return Future.delayed(const Duration(seconds: 3), () {
      isLoading.value = false;
    });
  }

  Future<void> fetchVocabularyTopics() async {
    try {
      // isLoading.value = true;
      final token = await TokenService.getToken();
      final response = await http
          .get(Uri.parse('$BASE_URL/vocabulary-quiz-topics'), headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      });

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body) as List;
        topics.assignAll(
          data.map<VocabularyQuizTopic>(
            (topic) => VocabularyQuizTopic.fromJson(topic),
          ),
        );
      } else {
        throw Exception('Failed to load vocabulary topics');
      }
    } catch (e) {
      print("Error fetching vocabulary topics: $e");
    } finally {
      // isLoading.value = false;
    }
  }

  Future<void> fetchVocabularyByDifficulty(int topicId, String level) async {
    try {
      isLoading.value = true;
      final token = await TokenService.getToken();
      final response = await http.post(
        Uri.parse('$BASE_URL/vocabulary-by-difficulty'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode({
          'vocabulary_quiz_topic_id': topicId,
          'level': level,
        }),
      );

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body) as List;
        vocabList.assignAll(
          data.map<VocabularyModel>(
            (item) => VocabularyModel.fromJson(item),
          ),
        );

        // Preload images into cache
        for (var vocab in vocabList) {
          precacheImage(
            NetworkImage(vocab.imgPath),
            Get.context!,
          );
        }
      } else {
        throw Exception('Failed to load vocabulary');
      }
    } catch (e) {
      print("Error fetching vocabulary: $e");
    } finally {
      isLoading.value = false;
    }
  }

  void initializeQuestions() {
    questions.assignAll(generateQuestions(vocabList));
    totalQuestions = questions.length;
  }

  void nextPage() {
    // if (currentPageIndex.value == 1) {
    // selectedWords.value = vocabList..shuffle(Random());
    // selectedWords.value = selectedWords.take(10).toList();
    // }

    if (pageController.hasClients) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
    print("currentPageIndex: ${currentPageIndex.value}");
    currentPageIndex.value++;
  }

  void previousPage() {
    Get.delete<CountdownController>();
    if (pageController.hasClients) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
    Future.delayed(const Duration(milliseconds: 300), () {
      currentPartIndex.value = 1;
      currentQuestionIndex.value = 0;
      questionScore.value = 0;
    });
  }

  Widget getAppBarTitle(int currentPageIndex) {
    switch (currentPageIndex) {
      case 0:
        return const Text('Vocabulary Quiz',
            textScaler: TextScaler.linear(1.2));
      case 1:
        return const Text('Chọn độ khó', textScaler: TextScaler.linear(1.2));
      case 2:
        return const Text('Các từ vựng', textScaler: TextScaler.linear(1.2));
      default:
        return Obx(
          () => Text(
            questionScore.value.toString(),
            style: TextStyle(color: AppColors.secondaryColor, fontSize: 30.sp),
          ),
        );
    }
  }

  /// Hiển thị widget câu hỏi phù hợp với loại câu hỏi
  Widget getWidgetForQuestion(VocabQuestionModel questions) {
    switch (currentPartIndex.value) {
      case 1:
        return VocabSelectWordWidget(
          questions: questions,
          onAnswerSelected: checkAnswer,
        );
      case 2:
        return VocabSelectImageWidget(
          questions: questions,
          onAnswerSelected: checkAnswer,
        );
      default:
        return const Text("Loại câu hỏi không hỗ trợ.");
    }
  }

  void nextQuestion() {
    if (currentQuestionIndex.value < totalQuestions) {
      selectedAnswer.value = null; // Reset đáp án đã chọn
      currentQuestionIndex.value++;

      if (currentQuestionIndex.value == 10) {
        currentPartIndex.value = 2;
      } else if (currentQuestionIndex.value == 20) {
        currentPartIndex.value = 3;
      }
      // Chuyển trang
      // pageController.jumpToPage(currentQuestionIndex.value);
    } else {
      print('Hoan thanh quiz');
    }
  }

  void checkAnswer(String selected) {
    VocabQuestionModel currentQuestion = questions[currentQuestionIndex.value];
    selectedAnswer.value = selected;
    showAnswerFeedback.value = true;

    if (selected == currentQuestion.correctAnswer) {
      isCorrect.value = true;
      questionScore.value += 10;
      AudioHelper.playAudioFromAsset('correct_sound.mp3');
      Get.find<CountdownController>().stopCountDown();

      Future.delayed(const Duration(milliseconds: 1000), () {
        showAnswerFeedback.value = false;
        nextQuestion();
        Get.find<CountdownController>().startCountDown();
      });
    } else {
      isCorrect.value = false;

      AudioHelper.playAudioFromAsset('wrong_sound.mp3');
      Get.delete<CountdownController>();

      Get.defaultDialog(
        title: "Sai đáp án!",
        middleText: 'Vui lòng thử lại!',
        onConfirm: () {
          Future.delayed(const Duration(milliseconds: 300), () {
            Get.back();

            selectedAnswer.value = null;
            previousPage();
          });
        },
      );
    }
  }

  List<VocabQuestionModel> get selectedImageQuestions => questions
      .where((element) => element.questionType == QuestionType.selectImage)
      .toList();
}
