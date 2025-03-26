import 'package:freezed_annotation/freezed_annotation.dart';

part 'listening_script_model.freezed.dart';
part 'listening_script_model.g.dart';

@freezed
class ListeningScriptModel with _$ListeningScriptModel{
  const factory ListeningScriptModel({
    required String id,
    required String speaker,
    required String transcript,
  }) = _ListeningScriptModel;

  factory ListeningScriptModel.fromJson(Map<String, dynamic> json) =>
      _$ListeningScriptModelFromJson(json);
}