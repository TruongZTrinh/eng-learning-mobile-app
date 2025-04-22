import 'package:english_learning_app/modules/quiz/vocabulary_quiz/controllers/vocab_quiz_controller.dart';
import 'package:english_learning_app/shared/app_colors.dart';
import 'package:english_learning_app/shared/app_text.dart';
import 'package:english_learning_app/shared/tts_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class VocabQuizReview extends StatelessWidget {
  VocabQuizReview({super.key});
  VocabQuizController vocabQuizController = Get.find<VocabQuizController>();

  TtsService ttsService = TtsService();

  @override
  Widget build(BuildContext context) {
    final topicId = vocabQuizController.selectedTopicId.value;

    return Scaffold(
      body: Obx(() {
        if (vocabQuizController.vocabList.isEmpty) {
          return Center(
            child: Text(
              'Không có dữ liệu để hiển thị',
              style: TextStyle(fontSize: 20.sp),
            ),
          );
        }
        if (vocabQuizController.isLoading.value) {
          return Center(
            child: SizedBox(
              width: 50.w,
              height: 50.h,
              child: const CircularProgressIndicator(),
            ),
          );
        }
        return GridView.builder(
          padding:
              EdgeInsets.only(top: 10.h, bottom: 90.h, left: 10.w, right: 10.w),
          itemCount: vocabQuizController.vocabList.length,
          // physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
          ),
          itemBuilder: (context, index) {
            var vocab = vocabQuizController.vocabList[index];
            final flipController = FlipCardController();
            return GestureDetector(
              onTap: () async {
                await ttsService.speak(vocab.word);
                flipController.flipcard();
                for (var question in vocabQuizController.questions) {
                  print(question.toJson());
                }
              },
              child: FlipCard(
                frontWidget: _frontCard(vocab.imgPath, vocab.word),
                backWidget: _backCard(vocab.meaning, vocab.example),
                controller: flipController,
                rotateSide: RotateSide.left,
                animationDuration: const Duration(milliseconds: 500),
              ),
            );
          },
        );
      }),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: SizedBox(
        width: 0.5.sw,
        child: FloatingActionButton.small(
          backgroundColor: AppColors.primaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.w)),
          onPressed: () {
            vocabQuizController.initializeQuestions();
            vocabQuizController.nextPage();
          },
          child: Text(
            'Bắt đầu',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.sp,
            ),
          ),
        ),
      ),
    );
  }
}

Widget _frontCard(String imgPath, String word) {
  return Card(
    color: Colors.white,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 130.h,
          width: 130.w,
          child: Image.network(
            imgPath,
            cacheHeight: 512,
            cacheWidth: 512,
            fit: BoxFit.contain,
          ),
        ),
        AppText(
          text: word,
          fontSize: 20.sp,
          fontWeight: FontWeight.w500,
        )
      ],
    ),
  );
}

Widget _backCard(String meaning, String example) {
  return Card(
    color: AppColors.primaryColor,
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            meaning,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.sp,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              height: 1.2,
            ),
          ),
          SizedBox(height: 5.h),
          Text(
            example,
            style: TextStyle(
              color: Colors.white,
              fontSize: 13.sp,
              height: 1,
            ),
          )
        ],
      ),
    ),
  );
}
