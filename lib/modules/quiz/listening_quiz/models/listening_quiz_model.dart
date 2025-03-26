import 'package:english_learning_app/modules/quiz/listening_quiz/models/listening_question_model.dart';
import 'package:english_learning_app/modules/quiz/listening_quiz/models/listening_script_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'listening_quiz_model.freezed.dart';
part 'listening_quiz_model.g.dart';

@freezed
class ListeningQuizModel with _$ListeningQuizModel {
  const factory ListeningQuizModel({
    required String id,
    required String title,
    required String description,
    required List<ListeningScriptModel> scripts,
    required List<ListeningQuestionModel>? questions,
  }) = _ListeningQuizModel;

  factory ListeningQuizModel.fromJson(Map<String, dynamic> json) =>
      _$ListeningQuizModelFromJson(json);
}
