import 'package:english_learning_app/modules/quiz/vocabulary_quiz/controllers/vocab_quiz_controller.dart';
import 'package:english_learning_app/modules/quiz/vocabulary_quiz/models/vocab_question_model.dart';
import 'package:english_learning_app/shared/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:english_learning_app/shared/audio_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VocabSelectImageWidget extends StatelessWidget {
  final VocabQuestionModel questions;
  final Function(String) onAnswerSelected;

  VocabQuizController vocabQuizController = Get.find<VocabQuizController>();

  VocabSelectImageWidget(
      {super.key, required this.questions, required this.onAnswerSelected});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      int currentQuestionIndex = vocabQuizController.currentQuestionIndex.value;
      VocabQuestionModel currentQuestion =
          vocabQuizController.questions[currentQuestionIndex];

      return Column(
        children: [
          SizedBox(height: 30.h),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50.w),
            height: 0.4.sh,
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20.h,
                crossAxisSpacing: 40.h,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
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
                    print(
                        'dung ko isSelected: ${vocabQuizController.selectedAnswer.value == choice}');
                    print('dung ko isSelected: $isSelected');

                    print('Choices list: ${currentQuestion.choices}');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: isSelected
                          ? (isCorrect
                              ? const Color.fromARGB(255, 58, 218, 63)
                              : Colors.red)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(10.sp),
                      border:
                          Border.all(color: AppColors.secondaryColor, width: 2),
                    ),
                    child: Image.asset(
                      currentQuestion.choices[index],
                      cacheHeight: 512,
                      cacheWidth: 512,
                      fit: BoxFit.contain,
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20.h),
          Container(
            width: 150.w,
            height: 50.h,
            decoration: const BoxDecoration(color: AppColors.primaryColor),
            child: Center(
              child: Text(
                currentQuestion.word,
                style: TextStyle(color: Colors.white, fontSize: 15.sp),
              ),
            ),
          )
        ],
      );
    });
  }
}
