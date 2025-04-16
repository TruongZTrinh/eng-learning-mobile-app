import 'package:english_learning_app/modules/auth/controllers/email_verification_controller.dart';
import 'package:english_learning_app/routes/app_routes.dart';
import 'package:english_learning_app/shared/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EmailVerificationPage extends StatelessWidget {
  final EmailVerificationController controller =
      Get.put(EmailVerificationController());
  final String token;

  EmailVerificationPage({super.key, required this.token});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Xác thực email',
          textScaler: TextScaler.linear(1.2),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Get.back();
          },
        ),
        shadowColor: Colors.grey.withAlpha((0.5 * 255).toInt()),
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: AppColors.secondaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Image.asset(
                controller.isEmailVerified.value
                    ? 'assets/images/icons/cat_fly_a.png'
                    : 'assets/images/icons/cat_mess_a.png',
                width: 230,
                height: 230,
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              'Xác thực email của bạn!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Obx(
              () => Text(
                controller.message.value,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: controller.isEmailVerified.value
                        ? Colors.green
                        : Colors.red),
              ),
            ),
            SizedBox(height: 20.h),
            Obx(() => controller.isLoading.value
                ? const CircularProgressIndicator()
                : controller.isEmailVerified.value
                    ? const SizedBox.shrink()
                    : ElevatedButton(
                        onPressed: () {
                          controller.sendVerificationEmail(token);
                        },
                        child: const Text('Gửi lại email xác thực'))),
            const SizedBox(height: 20),
            Obx(
              () => controller.isLoading.value
                  ? const SizedBox.shrink()
                  : controller.isEmailVerified.value
                      ? ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(60.w, 70.h),
                            padding: EdgeInsets.symmetric(
                              vertical: 10.h,
                              horizontal: 20.w,
                            ),
                            textStyle: TextStyle(
                              fontSize: 16.sp,
                            ),
                          ),
                          onPressed: () {
                            Get.offNamed(AppRoutes.login);
                          },
                          child: const Text(
                            'Quay lại trang Đăng nhập',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      : ElevatedButton(
                          onPressed: () {
                            controller.checkEmailVerificationStatus(token);
                          },
                          child: const Text('Kiểm tra trạng thái xác thực'),
                        ),
            ),
            const SizedBox(height: 20),
            Obx(() => controller.isEmailVerified.value
                ? Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 40.sp,
                  )
                : const Icon(
                    Icons.error,
                    color: Colors.red,
                  ))
          ],
        ),
      ),
    );
  }
}
