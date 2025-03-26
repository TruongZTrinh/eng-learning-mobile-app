import 'dart:math';
import 'package:english_learning_app/modules/quiz/vocabulary_quiz/controllers/vocab_quiz_controller.dart';
import 'package:english_learning_app/modules/quiz/vocabulary_quiz/data/vocab_data.dart';
import 'package:english_learning_app/shared/tts_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class VocalQuizDifficulty extends StatelessWidget {
  VocalQuizDifficulty({super.key});
  VocabQuizController vocabQuizController = Get.find<VocabQuizController>();
  TtsService ttsService = TtsService();

  final List<String> difficulties = ['Dễ', 'Trung Bình', 'Khó'];
  final List<String> iconDifficulties = [
    'assets/images/face-savoring-food.svg',
    'assets/images/face-with-raised-eyebrow.svg',
    'assets/images/face-screaming-in-fear.svg'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50.h),
        SizedBox(
          width: 250.w,
          height: 250.h,
          child: Image.asset(
            'assets/images/CTU_logo.png',
            cacheHeight: 512,
            cacheWidth: 512,
          ),
        ),
        SizedBox(height: 30.h),
        Text(
          'Chủ đề 1',
          style: TextStyle(fontSize: 18.sp),
        ),
        Text(
          'Động vật',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 35.sp,
          ),
        ),
        SizedBox(height: 30.h),
        Text(
          'Hãy chọn độ khó',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15.sp,
          ),
        ),
        SizedBox(height: 20.h),
        SizedBox(
          height: 100.h,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    vocabList.shuffle(Random());
                    vocabQuizController.nextPage();
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Container(
                      width: 100.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.transparent,
                            child: SvgPicture.asset(iconDifficulties[index]),
                          ),
                          Text(difficulties[index]),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
