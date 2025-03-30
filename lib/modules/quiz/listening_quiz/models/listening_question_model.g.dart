// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listening_question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListeningQuestionModelImpl _$$ListeningQuestionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ListeningQuestionModelImpl(
      id: json['id'] as String,
      scriptId: json['scriptId'] as String,
      questionText: json['questionText'] as String,
      options: (json['options'] as List<dynamic>)
          .map((e) => ListeningOptionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      correctAnswer: json['correctAnswer'] as String,
    );

Map<String, dynamic> _$$ListeningQuestionModelImplToJson(
        _$ListeningQuestionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'scriptId': instance.scriptId,
      'questionText': instance.questionText,
      'options': instance.options,
      'correctAnswer': instance.correctAnswer,
    };
