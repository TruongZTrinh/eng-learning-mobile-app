import 'package:english_learning_app/modules/quiz/vocabulary_quiz/controllers/vocab_quiz_controller.dart';
import 'package:english_learning_app/modules/quiz/vocabulary_quiz/views/vocab_quiz_test.dart';
import 'package:english_learning_app/modules/quiz/vocabulary_quiz/views/vocal_quiz_difficulty.dart';
import 'package:english_learning_app/modules/quiz/vocabulary_quiz/views/vocab_quiz_home.dart';
import 'package:english_learning_app/modules/quiz/vocabulary_quiz/views/vocab_quiz_review.dart';
import 'package:english_learning_app/shared/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VocabQuizPage extends StatelessWidget {
  VocabQuizPage({super.key});

  final VocabQuizController vocabQuizController =
      Get.find<VocabQuizController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: AppColors.secondaryColor,
          elevation: 2,
          shadowColor: Colors.grey.withAlpha((0.5 * 255).toInt()),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              if (vocabQuizController.pageController.page == 0) {
                Get.back();
              } else {
                vocabQuizController.previousPage();
              }
            },
          ),
          title: Obx(() => vocabQuizController
              .getAppBarTitle(vocabQuizController.currentPageIndex.value)),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Get.back();
                Future.delayed(const Duration(milliseconds: 200), () {
                  vocabQuizController.currentPageIndex.value = 0;
                });
              },
              icon: const Icon(Icons.settings),
            )
          ],
        ),
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: vocabQuizController.pageController,
          children: [
            VocabQuizHome(),
            VocalQuizDifficulty(),
            VocabQuizReview(),
            VocabQuizTest(),
          ],
          onPageChanged: (index) =>
              vocabQuizController.currentPageIndex.value = index,
        ));
  }
}
