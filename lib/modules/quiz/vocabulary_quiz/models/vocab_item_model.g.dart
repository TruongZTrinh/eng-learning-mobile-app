// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vocab_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VocabItemModelImpl _$$VocabItemModelImplFromJson(Map<String, dynamic> json) =>
    _$VocabItemModelImpl(
      word: json['word'] as String,
      imgPath: json['imgPath'] as String,
      meaning: json['meaning'] as String,
      example: json['example'] as String,
    );

Map<String, dynamic> _$$VocabItemModelImplToJson(
        _$VocabItemModelImpl instance) =>
    <String, dynamic>{
      'word': instance.word,
      'imgPath': instance.imgPath,
      'meaning': instance.meaning,
      'example': instance.example,
    };
