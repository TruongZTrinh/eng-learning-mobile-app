import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_model.freezed.dart';
part 'quiz_model.g.dart';

@freezed
class QuizModel with _$QuizModel {
  const factory QuizModel({
    required String title,
    required String description,
    required QuizType type,
  }) = _QuizModel;

  factory QuizModel.fromJson(Map<String, Object?> json) =>
      _$QuizModelFromJson(json);
}

enum QuizType { vocabulary, listening, speaking }