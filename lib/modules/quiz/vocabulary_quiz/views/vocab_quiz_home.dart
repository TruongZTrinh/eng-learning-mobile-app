import 'package:english_learning_app/modules/quiz/vocabulary_quiz/controllers/vocab_quiz_controller.dart';
import 'package:english_learning_app/shared/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class VocabQuizHome extends StatelessWidget {
  VocabQuizHome({super.key});

  final VocabQuizController vocabQuizController =
      Get.find<VocabQuizController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        vocabQuizController.nextPage();
      },
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            height: 130.h,
            padding: EdgeInsets.all(10.h),
            margin: EdgeInsets.only(
                left: 50.w, right: 50.w, top: 10.h, bottom: 10.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Container(
                  child: Image.asset(
                    'assets/images/vocabulary/animals.png',
                    cacheHeight: 256,
                    cacheWidth: 256,
                  ),
                ),
                SizedBox(width: 20.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AppText(
                      text: 'Động vật',
                      fontSize: 20.sp,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
