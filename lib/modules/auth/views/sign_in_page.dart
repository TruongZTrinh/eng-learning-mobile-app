import 'package:english_learning_app/modules/auth/controllers/sign_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final signInController = Get.put(SignInController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blueAccent,
                  Colors.lightBlue,
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipPath(
              clipper: BottomCurveClipper(),
              child: Container(
                height: 900.h,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 60.h),
            child: Form(
              key: signInController.formKey,
              child: Column(
                // mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 50.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Đăng nhập',
                          style: TextStyle(
                            fontSize: 40.sp,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(width: 10.w),
                      Image.asset(
                        'assets/images/icons/cat_pen_a.png',
                        scale: 12,
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Text('Chào mừng bạn đến với CTU EngLearning',
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.grey,
                      )),
                  SizedBox(height: 50.h),
                  TextFormField(
                    controller: signInController.emailController,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      hintText: 'Nhập vào email',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Vui lòng nhập email';
                      } else if (!RegExp(
                              r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
                          .hasMatch(value)) {
                        return 'Email không hợp lệ';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20.h),
                  TextFormField(
                    controller: signInController.passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Mật khẩu',
                      hintText: 'Nhập vào mật khẩu',
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Vui lòng nhập mật khẩu';
                      } else if (value.length < 6) {
                        return 'Mật khẩu phải có ít nhất 6 ký tự';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10.h),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text('Quên mật khẩu?',
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.blueAccent,
                        )),
                  ),
                  SizedBox(height: 40.h),
                  Obx(
                    () => GestureDetector(
                      onTap: signInController.isLoading.value
                          ? null
                          : () {
                              if (signInController.formKey.currentState!
                                  .validate()) {
                                signInController.loginUser(
                                  signInController.emailController.text,
                                  signInController.passwordController.text,
                                );
                              }
                            },
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Colors.blueAccent,
                              Colors.lightBlue,
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                          ),
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 15.h,
                          horizontal: 100.w,
                        ),
                        child: Center(
                          child: signInController.isLoading.value
                              ? const CircularProgressIndicator(
                                  color: Colors.white)
                              : Text(
                                  'Đăng nhập',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17.sp,
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  GestureDetector(
                    onTap: () => Get.offNamed('/signup'),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent, width: 2),
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 15.h,
                        horizontal: 100.w,
                      ),
                      child: Center(
                        child: Text(
                          'Đăng ký',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 17.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      const Expanded(child: Divider(thickness: 2)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Hoặc đăng nhập bằng',
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const Expanded(child: Divider(thickness: 2)),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: IconButton(
                          icon: Image.asset(
                            'assets/images/logo/google_128px.png',
                            scale: 3,
                          ),
                          onPressed: null,
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          icon: Image.asset(
                            'assets/images/logo/facebook_128px.png',
                            scale: 3,
                          ),
                          onPressed: null,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Custom clipper for curved bottom effect
class BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 150);
    path.quadraticBezierTo(
        size.width / 2, size.height + 50, size.width, size.height - 150);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
