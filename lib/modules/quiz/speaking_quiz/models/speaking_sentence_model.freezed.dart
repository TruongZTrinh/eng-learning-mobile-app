// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'speaking_sentence_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpeakingSentenceModel _$SpeakingSentenceModelFromJson(
    Map<String, dynamic> json) {
  return _SpeakingSentenceModel.fromJson(json);
}

/// @nodoc
mixin _$SpeakingSentenceModel {
  String get speaker => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get audioPath => throw _privateConstructorUsedError;

  /// Serializes this SpeakingSentenceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpeakingSentenceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpeakingSentenceModelCopyWith<SpeakingSentenceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeakingSentenceModelCopyWith<$Res> {
  factory $SpeakingSentenceModelCopyWith(SpeakingSentenceModel value,
          $Res Function(SpeakingSentenceModel) then) =
      _$SpeakingSentenceModelCopyWithImpl<$Res, SpeakingSentenceModel>;
  @useResult
  $Res call({String speaker, String text, String audioPath});
}

/// @nodoc
class _$SpeakingSentenceModelCopyWithImpl<$Res,
        $Val extends SpeakingSentenceModel>
    implements $SpeakingSentenceModelCopyWith<$Res> {
  _$SpeakingSentenceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpeakingSentenceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speaker = null,
    Object? text = null,
    Object? audioPath = null,
  }) {
    return _then(_value.copyWith(
      speaker: null == speaker
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      audioPath: null == audioPath
          ? _value.audioPath
          : audioPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpeakingSentenceModelImplCopyWith<$Res>
    implements $SpeakingSentenceModelCopyWith<$Res> {
  factory _$$SpeakingSentenceModelImplCopyWith(
          _$SpeakingSentenceModelImpl value,
          $Res Function(_$SpeakingSentenceModelImpl) then) =
      __$$SpeakingSentenceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String speaker, String text, String audioPath});
}

/// @nodoc
class __$$SpeakingSentenceModelImplCopyWithImpl<$Res>
    extends _$SpeakingSentenceModelCopyWithImpl<$Res,
        _$SpeakingSentenceModelImpl>
    implements _$$SpeakingSentenceModelImplCopyWith<$Res> {
  __$$SpeakingSentenceModelImplCopyWithImpl(_$SpeakingSentenceModelImpl _value,
      $Res Function(_$SpeakingSentenceModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpeakingSentenceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speaker = null,
    Object? text = null,
    Object? audioPath = null,
  }) {
    return _then(_$SpeakingSentenceModelImpl(
      speaker: null == speaker
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      audioPath: null == audioPath
          ? _value.audioPath
          : audioPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpeakingSentenceModelImpl implements _SpeakingSentenceModel {
  const _$SpeakingSentenceModelImpl(
      {required this.speaker, required this.text, required this.audioPath});

  factory _$SpeakingSentenceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpeakingSentenceModelImplFromJson(json);

  @override
  final String speaker;
  @override
  final String text;
  @override
  final String audioPath;

  @override
  String toString() {
    return 'SpeakingSentenceModel(speaker: $speaker, text: $text, audioPath: $audioPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpeakingSentenceModelImpl &&
            (identical(other.speaker, speaker) || other.speaker == speaker) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.audioPath, audioPath) ||
                other.audioPath == audioPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, speaker, text, audioPath);

  /// Create a copy of SpeakingSentenceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpeakingSentenceModelImplCopyWith<_$SpeakingSentenceModelImpl>
      get copyWith => __$$SpeakingSentenceModelImplCopyWithImpl<
          _$SpeakingSentenceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpeakingSentenceModelImplToJson(
      this,
    );
  }
}

abstract class _SpeakingSentenceModel implements SpeakingSentenceModel {
  const factory _SpeakingSentenceModel(
      {required final String speaker,
      required final String text,
      required final String audioPath}) = _$SpeakingSentenceModelImpl;

  factory _SpeakingSentenceModel.fromJson(Map<String, dynamic> json) =
      _$SpeakingSentenceModelImpl.fromJson;

  @override
  String get speaker;
  @override
  String get text;
  @override
  String get audioPath;

  /// Create a copy of SpeakingSentenceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpeakingSentenceModelImplCopyWith<_$SpeakingSentenceModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
