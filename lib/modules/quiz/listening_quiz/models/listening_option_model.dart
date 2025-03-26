import 'package:freezed_annotation/freezed_annotation.dart';

part 'listening_option_model.freezed.dart';
part 'listening_option_model.g.dart';

@freezed
class ListeningOptionModel with _$ListeningOptionModel {
  const factory ListeningOptionModel({
    required String id,
    required String text,
  }) = _ListeningOptionModel;

  factory ListeningOptionModel.fromJson(Map<String, dynamic> json) =>
      _$ListeningOptionModelFromJson(json);
}
