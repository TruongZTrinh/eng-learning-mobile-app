// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'speaking_lesson_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpeakingLessonModel _$SpeakingLessonModelFromJson(Map<String, dynamic> json) {
  return _SpeakingLessonModel.fromJson(json);
}

/// @nodoc
mixin _$SpeakingLessonModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imgPath => throw _privateConstructorUsedError;
  int get plays => throw _privateConstructorUsedError;
  bool get isLocked => throw _privateConstructorUsedError;
  List<SpeakingSentenceModel> get sentences =>
      throw _privateConstructorUsedError;
  int get speakingTopicId => throw _privateConstructorUsedError;

  /// Serializes this SpeakingLessonModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpeakingLessonModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpeakingLessonModelCopyWith<SpeakingLessonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeakingLessonModelCopyWith<$Res> {
  factory $SpeakingLessonModelCopyWith(
          SpeakingLessonModel value, $Res Function(SpeakingLessonModel) then) =
      _$SpeakingLessonModelCopyWithImpl<$Res, SpeakingLessonModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String imgPath,
      int plays,
      bool isLocked,
      List<SpeakingSentenceModel> sentences,
      int speakingTopicId});
}

/// @nodoc
class _$SpeakingLessonModelCopyWithImpl<$Res, $Val extends SpeakingLessonModel>
    implements $SpeakingLessonModelCopyWith<$Res> {
  _$SpeakingLessonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpeakingLessonModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imgPath = null,
    Object? plays = null,
    Object? isLocked = null,
    Object? sentences = null,
    Object? speakingTopicId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imgPath: null == imgPath
          ? _value.imgPath
          : imgPath // ignore: cast_nullable_to_non_nullable
              as String,
      plays: null == plays
          ? _value.plays
          : plays // ignore: cast_nullable_to_non_nullable
              as int,
      isLocked: null == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      sentences: null == sentences
          ? _value.sentences
          : sentences // ignore: cast_nullable_to_non_nullable
              as List<SpeakingSentenceModel>,
      speakingTopicId: null == speakingTopicId
          ? _value.speakingTopicId
          : speakingTopicId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpeakingLessonModelImplCopyWith<$Res>
    implements $SpeakingLessonModelCopyWith<$Res> {
  factory _$$SpeakingLessonModelImplCopyWith(_$SpeakingLessonModelImpl value,
          $Res Function(_$SpeakingLessonModelImpl) then) =
      __$$SpeakingLessonModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String imgPath,
      int plays,
      bool isLocked,
      List<SpeakingSentenceModel> sentences,
      int speakingTopicId});
}

/// @nodoc
class __$$SpeakingLessonModelImplCopyWithImpl<$Res>
    extends _$SpeakingLessonModelCopyWithImpl<$Res, _$SpeakingLessonModelImpl>
    implements _$$SpeakingLessonModelImplCopyWith<$Res> {
  __$$SpeakingLessonModelImplCopyWithImpl(_$SpeakingLessonModelImpl _value,
      $Res Function(_$SpeakingLessonModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpeakingLessonModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imgPath = null,
    Object? plays = null,
    Object? isLocked = null,
    Object? sentences = null,
    Object? speakingTopicId = null,
  }) {
    return _then(_$SpeakingLessonModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imgPath: null == imgPath
          ? _value.imgPath
          : imgPath // ignore: cast_nullable_to_non_nullable
              as String,
      plays: null == plays
          ? _value.plays
          : plays // ignore: cast_nullable_to_non_nullable
              as int,
      isLocked: null == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      sentences: null == sentences
          ? _value._sentences
          : sentences // ignore: cast_nullable_to_non_nullable
              as List<SpeakingSentenceModel>,
      speakingTopicId: null == speakingTopicId
          ? _value.speakingTopicId
          : speakingTopicId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpeakingLessonModelImpl implements _SpeakingLessonModel {
  const _$SpeakingLessonModelImpl(
      {required this.id,
      required this.name,
      required this.imgPath,
      required this.plays,
      required this.isLocked,
      required final List<SpeakingSentenceModel> sentences,
      required this.speakingTopicId})
      : _sentences = sentences;

  factory _$SpeakingLessonModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpeakingLessonModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String imgPath;
  @override
  final int plays;
  @override
  final bool isLocked;
  final List<SpeakingSentenceModel> _sentences;
  @override
  List<SpeakingSentenceModel> get sentences {
    if (_sentences is EqualUnmodifiableListView) return _sentences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sentences);
  }

  @override
  final int speakingTopicId;

  @override
  String toString() {
    return 'SpeakingLessonModel(id: $id, name: $name, imgPath: $imgPath, plays: $plays, isLocked: $isLocked, sentences: $sentences, speakingTopicId: $speakingTopicId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpeakingLessonModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imgPath, imgPath) || other.imgPath == imgPath) &&
            (identical(other.plays, plays) || other.plays == plays) &&
            (identical(other.isLocked, isLocked) ||
                other.isLocked == isLocked) &&
            const DeepCollectionEquality()
                .equals(other._sentences, _sentences) &&
            (identical(other.speakingTopicId, speakingTopicId) ||
                other.speakingTopicId == speakingTopicId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      imgPath,
      plays,
      isLocked,
      const DeepCollectionEquality().hash(_sentences),
      speakingTopicId);

  /// Create a copy of SpeakingLessonModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpeakingLessonModelImplCopyWith<_$SpeakingLessonModelImpl> get copyWith =>
      __$$SpeakingLessonModelImplCopyWithImpl<_$SpeakingLessonModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpeakingLessonModelImplToJson(
      this,
    );
  }
}

abstract class _SpeakingLessonModel implements SpeakingLessonModel {
  const factory _SpeakingLessonModel(
      {required final int id,
      required final String name,
      required final String imgPath,
      required final int plays,
      required final bool isLocked,
      required final List<SpeakingSentenceModel> sentences,
      required final int speakingTopicId}) = _$SpeakingLessonModelImpl;

  factory _SpeakingLessonModel.fromJson(Map<String, dynamic> json) =
      _$SpeakingLessonModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get imgPath;
  @override
  int get plays;
  @override
  bool get isLocked;
  @override
  List<SpeakingSentenceModel> get sentences;
  @override
  int get speakingTopicId;

  /// Create a copy of SpeakingLessonModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpeakingLessonModelImplCopyWith<_$SpeakingLessonModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
