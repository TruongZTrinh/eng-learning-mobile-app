// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listening_script_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListeningScriptModel _$ListeningScriptModelFromJson(Map<String, dynamic> json) {
  return _ListeningScriptModel.fromJson(json);
}

/// @nodoc
mixin _$ListeningScriptModel {
  String get id => throw _privateConstructorUsedError;
  String get speaker => throw _privateConstructorUsedError;
  String get transcript => throw _privateConstructorUsedError;

  /// Serializes this ListeningScriptModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListeningScriptModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListeningScriptModelCopyWith<ListeningScriptModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListeningScriptModelCopyWith<$Res> {
  factory $ListeningScriptModelCopyWith(ListeningScriptModel value,
          $Res Function(ListeningScriptModel) then) =
      _$ListeningScriptModelCopyWithImpl<$Res, ListeningScriptModel>;
  @useResult
  $Res call({String id, String speaker, String transcript});
}

/// @nodoc
class _$ListeningScriptModelCopyWithImpl<$Res,
        $Val extends ListeningScriptModel>
    implements $ListeningScriptModelCopyWith<$Res> {
  _$ListeningScriptModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListeningScriptModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? speaker = null,
    Object? transcript = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      speaker: null == speaker
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as String,
      transcript: null == transcript
          ? _value.transcript
          : transcript // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListeningScriptModelImplCopyWith<$Res>
    implements $ListeningScriptModelCopyWith<$Res> {
  factory _$$ListeningScriptModelImplCopyWith(_$ListeningScriptModelImpl value,
          $Res Function(_$ListeningScriptModelImpl) then) =
      __$$ListeningScriptModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String speaker, String transcript});
}

/// @nodoc
class __$$ListeningScriptModelImplCopyWithImpl<$Res>
    extends _$ListeningScriptModelCopyWithImpl<$Res, _$ListeningScriptModelImpl>
    implements _$$ListeningScriptModelImplCopyWith<$Res> {
  __$$ListeningScriptModelImplCopyWithImpl(_$ListeningScriptModelImpl _value,
      $Res Function(_$ListeningScriptModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListeningScriptModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? speaker = null,
    Object? transcript = null,
  }) {
    return _then(_$ListeningScriptModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      speaker: null == speaker
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as String,
      transcript: null == transcript
          ? _value.transcript
          : transcript // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListeningScriptModelImpl implements _ListeningScriptModel {
  const _$ListeningScriptModelImpl(
      {required this.id, required this.speaker, required this.transcript});

  factory _$ListeningScriptModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListeningScriptModelImplFromJson(json);

  @override
  final String id;
  @override
  final String speaker;
  @override
  final String transcript;

  @override
  String toString() {
    return 'ListeningScriptModel(id: $id, speaker: $speaker, transcript: $transcript)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListeningScriptModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.speaker, speaker) || other.speaker == speaker) &&
            (identical(other.transcript, transcript) ||
                other.transcript == transcript));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, speaker, transcript);

  /// Create a copy of ListeningScriptModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListeningScriptModelImplCopyWith<_$ListeningScriptModelImpl>
      get copyWith =>
          __$$ListeningScriptModelImplCopyWithImpl<_$ListeningScriptModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListeningScriptModelImplToJson(
      this,
    );
  }
}

abstract class _ListeningScriptModel implements ListeningScriptModel {
  const factory _ListeningScriptModel(
      {required final String id,
      required final String speaker,
      required final String transcript}) = _$ListeningScriptModelImpl;

  factory _ListeningScriptModel.fromJson(Map<String, dynamic> json) =
      _$ListeningScriptModelImpl.fromJson;

  @override
  String get id;
  @override
  String get speaker;
  @override
  String get transcript;

  /// Create a copy of ListeningScriptModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListeningScriptModelImplCopyWith<_$ListeningScriptModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
