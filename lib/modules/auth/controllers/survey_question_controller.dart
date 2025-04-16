import 'dart:convert';

import 'package:english_learning_app/constants/api_constants.dart';
import 'package:english_learning_app/routes/app_routes.dart';
import 'package:english_learning_app/shared/token_service.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class SurveyQuestionController extends GetxController {
  var currentQuestionIndex = 0.obs;
  var isLoading = false.obs;
  int totalQuestions = 3;

  var selectedOption = "".obs;

  final List<String> questions = [
    "Bạn thuộc nhóm người dùng nào?",
    "Bạn có thường xuyên học tiếng anh không?",
    "Bạn muốn học tiếng Anh để làm gì?",
  ];

  final List<List<String>> options = [
    ["Học sinh, Sinh viên", "Người đã đi làm"],
    ["Hiếm khi", "Thỉnh thoảng", "Thường xuyên"],
    ["Giao tiếp hằng ngày", "Thoải mái đi du lịch", "Phục vụ công việc"],
  ];

  bool get isLastQuestion => currentQuestionIndex.value == totalQuestions - 1;

  String getIconForOption(String option) {
    switch (option) {
      case "Học sinh, Sinh viên":
        return "assets/images/icons/cat_music_a.png";
      case "Người đã đi làm":
        return "assets/images/icons/cat_computer_a.png";
      case "Hiếm khi":
        return "assets/images/icons/cat_question_a.png";
      case "Thỉnh thoảng":
        return "assets/images/icons/cat_detective_a.png";
      case "Thường xuyên":
        return "assets/images/icons/cat_exercise_a.png";
      case "Giao tiếp hằng ngày":
        return "assets/images/icons/cat_phone_a.png";
      case "Thoải mái đi du lịch":
        return "assets/images/icons/cat_cold_a.png";
      case "Phục vụ công việc":
        return "assets/images/icons/cat_brush_a.png";
      default:
        return "assets/images/icons/cat_idea_a.png";
    }
  }

  void nextQuestion() {
    if (!isLastQuestion) {
      currentQuestionIndex.value++;
    } else {
      Get.snackbar("Thông báo", "Bạn đã hoàn thành khảo sát!");
      submitSurvey();
    }
  }

  void previousQuestion() {
    if (currentQuestionIndex.value > 0) {
      currentQuestionIndex.value--;
    }
  }

  Future<void> updateUserType(String option) async {
    try {
      isLoading.value = true;

      final token = await TokenService.getToken();
      if (token == null) {
        print("Không tìm thấy token. Vui lòng đăng nhập lại.");
        return;
      }

      String userType = option == "Học sinh, Sinh viên" ? "student" : "working";

      final response = await http.post(
        Uri.parse('$BASE_URL/survey/update-user-type'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode({
          'user_type': userType,
        }),
      );

      if (response.statusCode == 200) {
        print("Loại người dùng đã được cập nhật thành công.");
      } else {
        print("Đã xảy ra lỗi khi cập nhật loại người dùng: ${response.body}");
      }
    } catch (e) {
      print("Đã xảy ra lỗi khi cập nhật loại người dùng: $e");
    } finally {
      isLoading.value = false;
    }
  }

  void selectOption(String option) {
    selectedOption.value = option;
    updateUserType(option);
  }

  Future<void> submitSurvey() async {
    try {
      isLoading.value = true;

      final token = await TokenService.getToken();
      if (token == null) {
        Get.snackbar("Lỗi", "Không tìm thấy token. Vui lòng đăng nhập lại.",
            snackPosition: SnackPosition.TOP);
      }
      // Gửi yêu cầu HTTP đến API Laravel
      final response =
          await http.post(Uri.parse('$BASE_URL/complete-survey'), headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token', // Thêm token vào header
      });

      if (response.statusCode == 200) {
        print("Khảo sát đã được gửi thành công.");
        Get.offNamed(AppRoutes.main);
      } else {
        Get.snackbar("Lỗi", "Đã xảy ra lỗi khi gửi khảo sát.",
            snackPosition: SnackPosition.BOTTOM);
      }
    } catch (e) {
      Get.snackbar("Lỗi", "Đã xảy ra lỗi khi gửi khảo sát: $e",
          snackPosition: SnackPosition.BOTTOM);
    } finally {
      isLoading.value = false;
    }
  }
}
