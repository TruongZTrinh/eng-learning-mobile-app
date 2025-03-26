// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vocab_question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VocabQuestionModelImpl _$$VocabQuestionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VocabQuestionModelImpl(
      word: json['word'] as String,
      imgPath: json['imgPath'] as String,
      choices:
          (json['choices'] as List<dynamic>).map((e) => e as String).toList(),
      correctAnswer: json['correctAnswer'] as String,
      questionType: $enumDecode(_$QuestionTypeEnumMap, json['questionType']),
    );

Map<String, dynamic> _$$VocabQuestionModelImplToJson(
        _$VocabQuestionModelImpl instance) =>
    <String, dynamic>{
      'word': instance.word,
      'imgPath': instance.imgPath,
      'choices': instance.choices,
      'correctAnswer': instance.correctAnswer,
      'questionType': _$QuestionTypeEnumMap[instance.questionType]!,
    };

const _$QuestionTypeEnumMap = {
  QuestionType.selectWord: 'selectWord',
  QuestionType.matchWordImage: 'matchWordImage',
  QuestionType.selectImage: 'selectImage',
};
