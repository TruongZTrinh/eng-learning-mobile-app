import 'package:english_learning_app/modules/quiz/vocabulary_quiz/models/vocab_question_model.dart';
import 'package:english_learning_app/modules/quiz/vocabulary_quiz/controllers/vocab_quiz_controller.dart';
import 'package:english_learning_app/shared/app_colors.dart';
import 'package:english_learning_app/shared/audio_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VocabSelectWordWidget extends StatelessWidget {
  final VocabQuestionModel questions;
  final Function(String) onAnswerSelected;

  VocabQuizController vocabQuizController = Get.find<VocabQuizController>();

  VocabSelectWordWidget(
      {super.key, required this.questions, required this.onAnswerSelected});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      int currentQuestionIndex = vocabQuizController.currentQuestionIndex.value;
      VocabQuestionModel currentQuestion =
          vocabQuizController.questions[currentQuestionIndex];

      return Column(
        children: [
          SizedBox(
            width: 0.5.sw,
            height: 0.5.sw,
            // color: Colors.white,
            child: Image.asset(
              currentQuestion.imgPath,
              cacheWidth: 512,
              cacheHeight: 512,
              fit: BoxFit.contain,
            ),
          ),
          Column(
            children: List.generate(3, (index) {
              String choice = currentQuestion.choices[index];
              bool isSelected =
                  vocabQuizController.selectedAnswer.value == choice;
              bool isCorrect = vocabQuizController.isCorrect.value;

              return GestureDetector(
                onTap: () {
                  vocabQuizController.checkAnswer(choice);
                  vocabQuizController.selectedAnswer
                      .refresh(); // Ép GetX rebuild
                  print('dung ko2: $isCorrect');

                  print('Choice: $choice');
                  print(
                      'selectedAnswer: ${vocabQuizController.selectedAnswer.value}');

                  print('dung ko isSelected: $isSelected');

                  print('Choices list: ${currentQuestion.choices}');
                  Future.delayed(const Duration(milliseconds: 100), () {
                    print(
                        'dung ko isSelected (sau delay): ${vocabQuizController.selectedAnswer.value == choice}');
                  });
                },
                child: Container(
                  height: 50.h,
                  width: 200.w,
                  margin: EdgeInsets.symmetric(vertical: 10.h),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? (isCorrect
                            ? const Color.fromARGB(255, 58, 218, 63)
                            : Colors.red)
                        : AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Center(
                    child: Text(
                      currentQuestion.choices[index].toString(),
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      );
    });
  }
}
