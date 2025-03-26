import 'package:english_learning_app/modules/quiz/speaking_quiz/models/speaking_sentence_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'speaking_lesson_model.freezed.dart';
part 'speaking_lesson_model.g.dart';

@freezed
class SpeakingLessonModel with _$SpeakingLessonModel {
  const factory SpeakingLessonModel({
    required int id,
    required String name,
    required String imgPath,
    required int plays,
    required bool isLocked,
    required List<SpeakingSentenceModel> sentences,
    required int speakingTopicId,
  }) = _SpeakingLessonModel;

  factory SpeakingLessonModel.fromJson(Map<String, dynamic> json) =>
      _$SpeakingLessonModelFromJson(json);
}
