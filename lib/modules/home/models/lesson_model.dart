import 'package:english_learning_app/modules/home/models/question_model.dart';

enum UserType { student, working }

class LessonModel {
  final int id;
  final String title;
  final String description;
  final String level;
  final UserType userType; // Sử dụng enum UserType
  final List<QuestionModel> questions;

  LessonModel({
    required this.id,
    required this.title,
    required this.description,
    required this.level,
    required this.userType,
    required this.questions,
  });

  factory LessonModel.fromJson(Map<String, dynamic> json) {
    // Parse questions từ JSON
    List<QuestionModel> questionList = [];
    if (json['questions'] != null) {
      questionList = (json['questions'] as List)
          .map((question) => QuestionModel.fromJson(question))
          .toList();
    }

    return LessonModel(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      level: json['level'] as String,
      userType: _parseUserType(
          json['user_type'] as String), // Chuyển đổi từ String sang UserType
      questions: questionList,
    );
  }

  static UserType _parseUserType(String userType) {
    switch (userType) {
      case 'student':
        return UserType.student;
      case 'working':
        return UserType.working;
      default:
        throw Exception('Unknown user type: $userType');
    }
  }
}
