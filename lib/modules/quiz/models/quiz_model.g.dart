// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizModelImpl _$$QuizModelImplFromJson(Map<String, dynamic> json) =>
    _$QuizModelImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$QuizTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$QuizModelImplToJson(_$QuizModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'type': _$QuizTypeEnumMap[instance.type]!,
    };

const _$QuizTypeEnumMap = {
  QuizType.vocabulary: 'vocabulary',
  QuizType.listening: 'listening',
  QuizType.speaking: 'speaking',
};
