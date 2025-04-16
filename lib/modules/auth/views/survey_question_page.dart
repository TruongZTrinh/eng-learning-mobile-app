import 'package:english_learning_app/modules/auth/controllers/survey_question_controller.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SurveyQuestionPage extends StatelessWidget {
  SurveyQuestionPage({super.key});
  final SurveyQuestionController controller =
      Get.put(SurveyQuestionController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 100.h,
        ),
        child: Obx(() {
          return Column(
            children: [
              LinearProgressIndicator(
                value: (controller.currentQuestionIndex.value + 1) /
                    controller.totalQuestions,
                minHeight: 20,
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10.r),
              ),
              SizedBox(height: 40.h),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        controller
                            .questions[controller.currentQuestionIndex.value],
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(height: 50.h),
                    // Các tùy chọn
                    ...controller.options[controller.currentQuestionIndex.value]
                        .map((option) {
                      return GestureDetector(
                        onTap: () {
                          if (controller.currentQuestionIndex.value == 0) {
                            controller.selectOption(option);
                          }
                          controller.nextQuestion();
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 10.h),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                colors: [Colors.blue, Colors.lightBlueAccent]),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            child: Row(
                              children: [
                                Image.asset(
                                  controller.getIconForOption(option),
                                  width: 40.h,
                                  height: 40.h,
                                ),
                                SizedBox(width: 10.w),
                                Text(option,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                    SizedBox(height: 20.h),
                    // Nút quay lại
                    if (controller.currentQuestionIndex.value > 0)
                      GestureDetector(
                        onTap: () {
                          controller.previousQuestion();
                        },
                        child: Container(
                          width: 200.w,
                          padding: EdgeInsets.symmetric(
                              vertical: 10.w, horizontal: 20.h),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                colors: [Colors.red, Colors.redAccent]),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              "Quay lại",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
