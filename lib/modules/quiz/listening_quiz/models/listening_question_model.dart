import 'package:english_learning_app/modules/quiz/listening_quiz/models/listening_option_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'listening_question_model.freezed.dart';
part 'listening_question_model.g.dart';

@freezed
class ListeningQuestionModel with _$ListeningQuestionModel {
  const factory ListeningQuestionModel({
    required String id,
    required List<String> scriptIds,
    required String questionText,
    required List<ListeningOptionModel> options,
    required String correctAnswer,
  }) = _ListeningQuestionModel;

  factory ListeningQuestionModel.fromJson(Map<String, dynamic> json) =>
      _$ListeningQuestionModelFromJson(json);
}
