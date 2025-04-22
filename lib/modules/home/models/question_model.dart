import 'package:english_learning_app/modules/home/models/answer_model.dart';

class QuestionModel {
  final int id;
  final int lessonId;
  final String questionText;
  final List<AnswerModel> answers; // Danh sách câu trả lời

  QuestionModel({
    required this.id,
    required this.lessonId,
    required this.questionText,
    required this.answers, // Khởi tạo danh sách câu trả lời rỗng
  });

  factory QuestionModel.fromJson(Map<String, dynamic> json) {
    List<AnswerModel> answerList = [];
    if (json['answers'] != null) {
      answerList = (json['answers'] as List)
          .map((answer) => AnswerModel.fromJson(answer))
          .toList();
    }

    return QuestionModel(
      id: json['id'] as int,
      lessonId: json['lesson_id'] as int,
      questionText: json['question_text'] as String,
      answers: answerList, // Chuyển đổi danh sách câu trả lời từ JSON
    );
  }
}
