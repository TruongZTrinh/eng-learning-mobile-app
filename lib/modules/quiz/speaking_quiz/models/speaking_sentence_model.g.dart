// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'speaking_sentence_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpeakingSentenceModelImpl _$$SpeakingSentenceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SpeakingSentenceModelImpl(
      speaker: json['speaker'] as String,
      text: json['text'] as String,
      audioPath: json['audioPath'] as String,
    );

Map<String, dynamic> _$$SpeakingSentenceModelImplToJson(
        _$SpeakingSentenceModelImpl instance) =>
    <String, dynamic>{
      'speaker': instance.speaker,
      'text': instance.text,
      'audioPath': instance.audioPath,
    };
