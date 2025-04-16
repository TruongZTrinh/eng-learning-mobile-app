import 'dart:convert';

import 'package:english_learning_app/constants/api_constants.dart';
import 'package:english_learning_app/modules/auth/views/email_verification_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class SignUpController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  var isLoading = false.obs;

  @override
  void onClose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }

  // Register a new user
  Future<void> registerUser(String name, String email, String password,
      String passwordConfirmation) async {
    isLoading.value = true;

    try {
      final response = await http.post(Uri.parse('$BASE_URL/register'),
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({
            'name': name,
            'email': email,
            'password': password,
            'password_confirmation': passwordConfirmation,
          }));

      if (response.statusCode == 201) {
        final responseData = jsonDecode(response.body);
        final userToken =
            responseData['token']; // Extract the token from the response

        print('User registered successfully: ${response.body}');

        Get.snackbar(
          'Thành công!',
          'Người dùng đã đăng ký thành công!',
          backgroundColor: Colors.green,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
        );
        Get.to(() => EmailVerificationPage(
            token: userToken)); // Navigate to the email verification page
      } else {
        print('Failed to register user: ${response.body}');
        Get.snackbar(
          'Thất bại!',
          'Người dùng đăng ký không thành công!',
          backgroundColor: Colors.red,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (error) {
      print('Error: $error');
      Get.snackbar(
        'Lỗi!',
        'Có lỗi xảy ra, hãy thử lại.',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } finally {
      isLoading.value = false;
    }
  }
}
