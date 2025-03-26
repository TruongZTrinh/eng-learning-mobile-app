import 'package:freezed_annotation/freezed_annotation.dart';

part 'vocab_question_model.freezed.dart';
part 'vocab_question_model.g.dart';

enum QuestionType { selectWord, matchWordImage, selectImage }

@freezed
class VocabQuestionModel with _$VocabQuestionModel {
  const factory VocabQuestionModel({
    required String word,
    required String imgPath,
    required List<String> choices,
    required String correctAnswer,
    required QuestionType questionType,
  }) = _VocabQuestionModel;

  factory VocabQuestionModel.fromJson(Map<String, dynamic> json) =>
      _$VocabQuestionModelFromJson(json);
}
