// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'speaking_lesson_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpeakingLessonModelImpl _$$SpeakingLessonModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SpeakingLessonModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      imgPath: json['imgPath'] as String,
      plays: (json['plays'] as num).toInt(),
      isLocked: json['isLocked'] as bool,
      sentences: (json['sentences'] as List<dynamic>)
          .map((e) => SpeakingSentenceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      speakingTopicId: (json['speakingTopicId'] as num).toInt(),
    );

Map<String, dynamic> _$$SpeakingLessonModelImplToJson(
        _$SpeakingLessonModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imgPath': instance.imgPath,
      'plays': instance.plays,
      'isLocked': instance.isLocked,
      'sentences': instance.sentences,
      'speakingTopicId': instance.speakingTopicId,
    };
