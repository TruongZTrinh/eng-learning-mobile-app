import 'package:english_learning_app/modules/quiz/vocabulary_quiz/controllers/vocab_quiz_controller.dart';
import 'package:english_learning_app/shared/app_colors.dart';
import 'package:english_learning_app/shared/audio_helper.dart';
import 'package:english_learning_app/widgets/countdown_circular_progress_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VocabQuizTest extends StatelessWidget {
  VocabQuizTest({super.key});

  VocabQuizController vocabQuizController = Get.find<VocabQuizController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 50.h, left: 15.w, right: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                    '${vocabQuizController.currentQuestionIndex.value + 1}/${vocabQuizController.totalQuestions}'),
              ),
              Obx(
                () => LinearProgressIndicator(
                  value: (vocabQuizController.currentQuestionIndex.value + 1) /
                      vocabQuizController.totalQuestions,
                  minHeight: 10.h,
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
        Obx(key: ValueKey(vocabQuizController.currentPartIndex.value), () {
          return Expanded(
              child: vocabQuizController.getWidgetForQuestion(
                  vocabQuizController.questions[
                      vocabQuizController.currentQuestionIndex.value]));
        }),
        SizedBox(height: 20.h),
        CountdownCircularProgressBar(
            duration: 3,
            onComplete: () {
              AudioHelper.playAudioFromAsset('wrong_sound.mp3');
              Get.find<CountdownController>().stopCountDown();
              Get.defaultDialog(
                title: "Hết thời gian!",
                middleText: 'Bạn đã hết thời gian trả lời câu hỏi',
                onConfirm: () {
                  Get.back();
                  vocabQuizController.previousPage();
                },
              );
            }),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.find<CountdownController>().startCountDown();
                vocabQuizController.nextQuestion();
              },
              child: const Text("Tiếp tục"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<CountdownController>().stopCountDown();
              },
              child: const Text("Dừng"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<CountdownController>().startCountDown();
              },
              child: const Text("Reset"),
            ),
          ],
        ),
      ],
    );
  }
}
