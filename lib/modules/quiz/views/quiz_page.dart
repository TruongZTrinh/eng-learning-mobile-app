import 'package:english_learning_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:english_learning_app/shared/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});
  static const List<String> titles = ['Từ vựng', 'Kỹ năng Nói', 'Kỹ năng Nghe'];
  static List<String> routes = [
    AppRoutes.vocabularyQuiz,
    AppRoutes.speakingQuiz,
    AppRoutes.listeningQuiz,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
          width: 300.w,
          height: 190.h,
          // height: MediaQuery.of(context).size.width * 0.45,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      titles[index],
                      style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(routes[index]);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50.h,
                        width: 200.w,
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.r))),
                        child: Text(
                          'Bắt đầu quiz',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  top: -8.h,
                  left: -5.w,
                  child: Container(
                    width: 70.h,
                    height: 70.h,
                    padding: EdgeInsets.all(10.r),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 175, 239, 0.3),
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Image.asset(
                        'assets/images/CTU_logo.png',
                        cacheHeight: 96,
                        cacheWidth: 96,
                      ),
                    ),
                  ))
            ],
          ),
        );
      },
    ));
  }
}
