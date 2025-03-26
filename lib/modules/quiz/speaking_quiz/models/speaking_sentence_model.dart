import 'package:freezed_annotation/freezed_annotation.dart';

part 'speaking_sentence_model.freezed.dart';
part 'speaking_sentence_model.g.dart';

@freezed
class SpeakingSentenceModel with _$SpeakingSentenceModel{
  const factory SpeakingSentenceModel({
    required String speaker,
    required String text,
    required String audioPath,
  }) = _SpeakingSentenceModel;

  factory SpeakingSentenceModel.fromJson(Map<String, dynamic> json) => _$SpeakingSentenceModelFromJson(json);
}