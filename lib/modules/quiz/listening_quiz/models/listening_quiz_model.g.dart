// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listening_quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListeningQuizModelImpl _$$ListeningQuizModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ListeningQuizModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      scripts: (json['scripts'] as List<dynamic>)
          .map((e) => ListeningScriptModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      questions: (json['questions'] as List<dynamic>?)
          ?.map(
              (e) => ListeningQuestionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ListeningQuizModelImplToJson(
        _$ListeningQuizModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'scripts': instance.scripts,
      'questions': instance.questions,
    };
