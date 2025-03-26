// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vocab_question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VocabQuestionModel _$VocabQuestionModelFromJson(Map<String, dynamic> json) {
  return _VocabQuestionModel.fromJson(json);
}

/// @nodoc
mixin _$VocabQuestionModel {
  String get word => throw _privateConstructorUsedError;
  String get imgPath => throw _privateConstructorUsedError;
  List<String> get choices => throw _privateConstructorUsedError;
  String get correctAnswer => throw _privateConstructorUsedError;
  QuestionType get questionType => throw _privateConstructorUsedError;

  /// Serializes this VocabQuestionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VocabQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VocabQuestionModelCopyWith<VocabQuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VocabQuestionModelCopyWith<$Res> {
  factory $VocabQuestionModelCopyWith(
          VocabQuestionModel value, $Res Function(VocabQuestionModel) then) =
      _$VocabQuestionModelCopyWithImpl<$Res, VocabQuestionModel>;
  @useResult
  $Res call(
      {String word,
      String imgPath,
      List<String> choices,
      String correctAnswer,
      QuestionType questionType});
}

/// @nodoc
class _$VocabQuestionModelCopyWithImpl<$Res, $Val extends VocabQuestionModel>
    implements $VocabQuestionModelCopyWith<$Res> {
  _$VocabQuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VocabQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? imgPath = null,
    Object? choices = null,
    Object? correctAnswer = null,
    Object? questionType = null,
  }) {
    return _then(_value.copyWith(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      imgPath: null == imgPath
          ? _value.imgPath
          : imgPath // ignore: cast_nullable_to_non_nullable
              as String,
      choices: null == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<String>,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      questionType: null == questionType
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as QuestionType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VocabQuestionModelImplCopyWith<$Res>
    implements $VocabQuestionModelCopyWith<$Res> {
  factory _$$VocabQuestionModelImplCopyWith(_$VocabQuestionModelImpl value,
          $Res Function(_$VocabQuestionModelImpl) then) =
      __$$VocabQuestionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String word,
      String imgPath,
      List<String> choices,
      String correctAnswer,
      QuestionType questionType});
}

/// @nodoc
class __$$VocabQuestionModelImplCopyWithImpl<$Res>
    extends _$VocabQuestionModelCopyWithImpl<$Res, _$VocabQuestionModelImpl>
    implements _$$VocabQuestionModelImplCopyWith<$Res> {
  __$$VocabQuestionModelImplCopyWithImpl(_$VocabQuestionModelImpl _value,
      $Res Function(_$VocabQuestionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VocabQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? imgPath = null,
    Object? choices = null,
    Object? correctAnswer = null,
    Object? questionType = null,
  }) {
    return _then(_$VocabQuestionModelImpl(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      imgPath: null == imgPath
          ? _value.imgPath
          : imgPath // ignore: cast_nullable_to_non_nullable
              as String,
      choices: null == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<String>,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      questionType: null == questionType
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as QuestionType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VocabQuestionModelImpl implements _VocabQuestionModel {
  const _$VocabQuestionModelImpl(
      {required this.word,
      required this.imgPath,
      required final List<String> choices,
      required this.correctAnswer,
      required this.questionType})
      : _choices = choices;

  factory _$VocabQuestionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VocabQuestionModelImplFromJson(json);

  @override
  final String word;
  @override
  final String imgPath;
  final List<String> _choices;
  @override
  List<String> get choices {
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  @override
  final String correctAnswer;
  @override
  final QuestionType questionType;

  @override
  String toString() {
    return 'VocabQuestionModel(word: $word, imgPath: $imgPath, choices: $choices, correctAnswer: $correctAnswer, questionType: $questionType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VocabQuestionModelImpl &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.imgPath, imgPath) || other.imgPath == imgPath) &&
            const DeepCollectionEquality().equals(other._choices, _choices) &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer) &&
            (identical(other.questionType, questionType) ||
                other.questionType == questionType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      word,
      imgPath,
      const DeepCollectionEquality().hash(_choices),
      correctAnswer,
      questionType);

  /// Create a copy of VocabQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VocabQuestionModelImplCopyWith<_$VocabQuestionModelImpl> get copyWith =>
      __$$VocabQuestionModelImplCopyWithImpl<_$VocabQuestionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VocabQuestionModelImplToJson(
      this,
    );
  }
}

abstract class _VocabQuestionModel implements VocabQuestionModel {
  const factory _VocabQuestionModel(
      {required final String word,
      required final String imgPath,
      required final List<String> choices,
      required final String correctAnswer,
      required final QuestionType questionType}) = _$VocabQuestionModelImpl;

  factory _VocabQuestionModel.fromJson(Map<String, dynamic> json) =
      _$VocabQuestionModelImpl.fromJson;

  @override
  String get word;
  @override
  String get imgPath;
  @override
  List<String> get choices;
  @override
  String get correctAnswer;
  @override
  QuestionType get questionType;

  /// Create a copy of VocabQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VocabQuestionModelImplCopyWith<_$VocabQuestionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
