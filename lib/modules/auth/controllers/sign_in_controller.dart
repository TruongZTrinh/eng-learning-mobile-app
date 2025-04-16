import 'dart:convert';
import 'package:english_learning_app/constants/api_constants.dart';
import 'package:english_learning_app/routes/app_routes.dart';
import 'package:english_learning_app/shared/token_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class SignInController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  var isLoading = false.obs;
  var isPasswordVisible = false.obs;

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  Future<String?> loginUser(String email, String password) async {
    isLoading.value = true;

    try {
      final response = await http.post(
        Uri.parse('$BASE_URL/login'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'email': email,
          'password': password,
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final token = data['token'];
        final surveyCompleted = data['survey_completed'] == 1;
        print("Survey Completed: $surveyCompleted");

        Get.snackbar(
          "Đăng nhập thành công!",
          "Bạn đã đăng nhập thành công.",
          backgroundColor: Colors.green,
          colorText: Colors.white,
          snackPosition: SnackPosition.TOP,
        );
        if (surveyCompleted) {
          Get.offNamed(AppRoutes.main);
        } else {
          Get.offNamed(AppRoutes.survey);
        }

        TokenService.saveToken(token);
        return token;
      } else {
        print("Failed to login: ${response.body}");

        Get.snackbar(
          "Đăng nhập thất bại!",
          "Có lỗi xảy ra trong quá trình đăng nhập.",
          backgroundColor: Colors.red,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
        );
        return "";
      }
    } catch (error) {
      print('Error: $error');
      Get.snackbar(
        "Lỗi",
        "Có lỗi xảy ra trong quá trình đăng nhập.",
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
    }
    return null;
  }
}
