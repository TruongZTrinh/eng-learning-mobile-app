import 'package:freezed_annotation/freezed_annotation.dart';

part 'vocab_item_model.freezed.dart';
part 'vocab_item_model.g.dart';

@freezed
class VocabItemModel with _$VocabItemModel {
  const factory VocabItemModel({
    required String word,
    required String imgPath,
    required String meaning,
    required String example,
  }) = _VocabItemModel;

  factory VocabItemModel.fromJson(Map<String, Object?> json) =>
      _$VocabItemModelFromJson(json);
}
