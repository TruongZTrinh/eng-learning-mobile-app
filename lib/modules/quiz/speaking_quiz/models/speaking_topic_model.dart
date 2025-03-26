import 'package:freezed_annotation/freezed_annotation.dart';

part 'speaking_topic_model.freezed.dart';
part 'speaking_topic_model.g.dart';

@freezed
class SpeakingTopicModel with _$SpeakingTopicModel {
  const factory SpeakingTopicModel({
    required int id,
    required String name,
  }) = _SpeakingTopicModel;

  factory SpeakingTopicModel.fromJson(Map<String, dynamic> json) =>
      _$SpeakingTopicModelFromJson(json);
}
