import 'package:english_learning_app/modules/splash_screen/controllers/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final SplashScreenController controller = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0.5, end: 1.0),
        duration: const Duration(milliseconds: 700),
        builder: (context, scale, child) {
          return Transform.scale(
            scale: scale,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/CTU_logo.png",
                  cacheHeight: 500,
                  cacheWidth: 500,
                  height: 250.h,
                ),
                SizedBox(height: 30.h),
                Text("Fluent English, Bright Future",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w800,
                      color: Colors.blueAccent,
                    )),
                SizedBox(height: 20.h),
              ],
            ),
          );
        },
      )),
    );
  }
}
