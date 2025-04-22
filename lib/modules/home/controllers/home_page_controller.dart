import 'dart:convert';
import 'package:english_learning_app/constants/api_constants.dart';
import 'package:english_learning_app/modules/home/models/lesson_model.dart';
import 'package:english_learning_app/shared/token_service.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomePageController extends GetxController {
  var expandedIndex = (-1).obs;
  List lessons = [];
  var isLoading = false.obs;

  @override
  void onInit() {
    fetchLessons();
    super.onInit();
  }

  void toggle(int index) {
    if (expandedIndex.value == index) {
      expandedIndex.value = -1; // thu gọn nếu bấm lại
    } else {
      expandedIndex.value = index;
    }
  }

  Future<void> fetchLessons() async {
    try {
      isLoading.value = true;
      final token = await TokenService.getToken();
      final response = await http.get(
        Uri.parse('$BASE_URL/lessons'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      print("API Response Code: ${response.statusCode}");
      print("API Response Body: ${response.body}");

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        lessons = data.map((lesson) => LessonModel.fromJson(lesson)).toList();
        // Print each lesson to the console
        // for (var lesson in lessons) {
        //   print('Lesson title: ${lesson.title}');
        //   print('Lesson discription: ${lesson.description}');
        //   print('level: ${lesson.level}');
        //   print('User type: ${lesson.userType}');
        //   print('Questions: ${lesson.questions}');
        //   for (var question in lesson.questions) {
        //     print('Question: ${question.questionText}');
        //     for (var answer in question.answers) {
        //       print('Answer: ${answer.answerText}');
        //     }
        //   }
        // }
      } else {
        throw Exception('Failed to load lessons');
      }
    } catch (e) {
      print('Error fetching lessons: $e');
    } finally {
      isLoading.value = false;
    }
  }
}
