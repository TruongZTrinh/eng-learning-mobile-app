class AnswerModel {
  final int id;
  final int questionId;
  final String answerText;

  AnswerModel({
    required this.id,
    required this.questionId,
    required this.answerText,
  });

  factory AnswerModel.fromJson(Map<String, dynamic> json) {
    return AnswerModel(
      id: json['id'] as int,
      questionId: json['question_id'] as int,
      answerText: json['answer_text'] as String,
    );
  }
}