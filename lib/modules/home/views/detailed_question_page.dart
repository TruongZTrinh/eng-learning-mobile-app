import 'package:english_learning_app/modules/home/controllers/detailed_question_page_controller.dart';
import 'package:english_learning_app/modules/home/models/question_model.dart';
import 'package:english_learning_app/shared/app_colors.dart';
import 'package:english_learning_app/shared/speech_service.dart';
import 'package:english_learning_app/shared/tts_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class DetailedQuestionPage extends StatelessWidget {
  DetailedQuestionPage({super.key});

  final DetailedQuestionPageController controller =
      Get.put(DetailedQuestionPageController(), permanent: true);

  // Lấy trực tiếp đối tượng
  final QuestionModel question = Get.arguments;

  @override
  Widget build(BuildContext context) {
    // Khởi tạo danh sách trạng thái trong controller
    controller.initializeStates(question.answers.length);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: AppColors.secondaryColor,
          elevation: 2,
          shadowColor: Colors.grey.withAlpha((0.5 * 255).toInt()),
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back_ios)),
          title: const Text(
            "Chi tiết câu hỏi",
            textScaler: TextScaler.linear(1.2),
          ),
          centerTitle: true,
        ),
        body: Obx(() {
          if (controller.isLoading.value) {
            return const Center(
                child: SpinKitThreeBounce(
              color: AppColors.primaryColor,
              size: 50,
            ));
          }
          return Center(
            child: Column(
              children: [
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
                  padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
                  width: double.infinity,
                  constraints: BoxConstraints(
                    minHeight: 50.h,
                    minWidth: 200.w,
                  ),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        AppColors.primaryColor,
                        AppColors.secondaryColor,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        question.questionText,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.volume_up,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              TtsService ttsService = TtsService();
                              ttsService.speak(question.questionText);
                            },
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              TtsService ttsService = TtsService();
                              ttsService.speak(question.questionText);
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: question.answers.length,
                    itemBuilder: (context, index) {
                      return Obx(() => Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 10.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 10.h),
                            width: double.infinity,
                            constraints: BoxConstraints(
                              minHeight: 50.h,
                            ),
                            decoration: BoxDecoration(
                              color: controller.selectedStates[index]
                                  ? Colors.greenAccent // Màu khi được chọn
                                  : Colors.amberAccent, // Màu mặc định
                              borderRadius: BorderRadius.circular(12.r),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withAlpha((0.5 * 255).toInt()),
                                  blurRadius: 4,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Center(
                              child: ListTile(
                                leading: const Icon(Icons.volume_up),
                                title: Text(
                                  question.answers[index].answerText,
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: AppColors.secondaryColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                trailing: IconButton(
                                  onPressed: () {
                                    // Thay đổi trạng thái khi nhấn
                                    controller.toggleState(index);
                                  },
                                  icon: Icon(
                                    Icons.check,
                                    color: controller.selectedStates[index]
                                        ? Colors.green
                                        : Colors.grey,
                                  ),
                                ),
                                onTap: () {
                                  TtsService ttsService = TtsService();
                                  ttsService.speak(
                                      question.answers[index].answerText);
                                },
                              ),
                            ),
                          ));
                    },
                  ),
                ),
              ],
            ),
          );
        }));
  }
}
