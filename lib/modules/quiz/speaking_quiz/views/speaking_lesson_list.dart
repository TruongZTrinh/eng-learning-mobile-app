import 'package:english_learning_app/modules/quiz/speaking_quiz/controllers/speaking_quiz_controller.dart';
import 'package:english_learning_app/modules/quiz/speaking_quiz/data/speaking_lesson_data.dart';
import 'package:english_learning_app/modules/quiz/speaking_quiz/views/speaking_lesson_quiz.dart';
import 'package:english_learning_app/shared/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SpeakingLessonList extends StatelessWidget {
  final int speakingTopicId;

  SpeakingLessonList({super.key, required this.speakingTopicId});
  final SpeakingQuizController speakingQuizController = Get.find<SpeakingQuizController>();

  @override
  Widget build(BuildContext context) {
    // Lọc danh sách theo speakingTopicId
    final lessons = speakingLessons
        .where((lesson) => lesson.speakingTopicId == speakingTopicId)
        .toList();

    return ListView.builder(
      itemCount: lessons.length,
      itemBuilder: (context, index) {
        final lesson = lessons[index];
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          height: 170.h,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20.r)),
          child: Padding(
            padding: EdgeInsets.all(5.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  lesson.imgPath,
                  cacheHeight: 512,
                  cacheWidth: 512,
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        lesson.name,
                        softWrap: true,
                        style: TextStyle(
                            color: AppColors.secondaryColor, fontSize: 16.sp),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            lesson.plays.toString(),
                            style: TextStyle(
                                color: AppColors.secondaryColor,
                                fontSize: 16.sp),
                          ),
                          SizedBox(height: 5.h),
                          GestureDetector(
                            onTap: () {
                              speakingQuizController.isLoading.value=true;
                              Get.to(() => const SpeakingLessonQuiz(),
                                  arguments: {
                                    'lessonId': lesson.id,
                                    'lessonName': lesson.name,
                                    'lessonSentences': lesson.sentences,
                                  });
                            },
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30.w, vertical: 10.h),
                                decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(10.r)),
                                child: const Text(
                                  'Luyện tập',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
