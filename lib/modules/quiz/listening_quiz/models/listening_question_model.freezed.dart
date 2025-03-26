// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listening_question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListeningQuestionModel _$ListeningQuestionModelFromJson(
    Map<String, dynamic> json) {
  return _ListeningQuestionModel.fromJson(json);
}

/// @nodoc
mixin _$ListeningQuestionModel {
  String get id => throw _privateConstructorUsedError;
  List<String> get scriptIds => throw _privateConstructorUsedError;
  String get questionText => throw _privateConstructorUsedError;
  List<ListeningOptionModel> get options => throw _privateConstructorUsedError;
  String get correctAnswer => throw _privateConstructorUsedError;

  /// Serializes this ListeningQuestionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListeningQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListeningQuestionModelCopyWith<ListeningQuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListeningQuestionModelCopyWith<$Res> {
  factory $ListeningQuestionModelCopyWith(ListeningQuestionModel value,
          $Res Function(ListeningQuestionModel) then) =
      _$ListeningQuestionModelCopyWithImpl<$Res, ListeningQuestionModel>;
  @useResult
  $Res call(
      {String id,
      List<String> scriptIds,
      String questionText,
      List<ListeningOptionModel> options,
      String correctAnswer});
}

/// @nodoc
class _$ListeningQuestionModelCopyWithImpl<$Res,
        $Val extends ListeningQuestionModel>
    implements $ListeningQuestionModelCopyWith<$Res> {
  _$ListeningQuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListeningQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? scriptIds = null,
    Object? questionText = null,
    Object? options = null,
    Object? correctAnswer = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      scriptIds: null == scriptIds
          ? _value.scriptIds
          : scriptIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      questionText: null == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<ListeningOptionModel>,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListeningQuestionModelImplCopyWith<$Res>
    implements $ListeningQuestionModelCopyWith<$Res> {
  factory _$$ListeningQuestionModelImplCopyWith(
          _$ListeningQuestionModelImpl value,
          $Res Function(_$ListeningQuestionModelImpl) then) =
      __$$ListeningQuestionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<String> scriptIds,
      String questionText,
      List<ListeningOptionModel> options,
      String correctAnswer});
}

/// @nodoc
class __$$ListeningQuestionModelImplCopyWithImpl<$Res>
    extends _$ListeningQuestionModelCopyWithImpl<$Res,
        _$ListeningQuestionModelImpl>
    implements _$$ListeningQuestionModelImplCopyWith<$Res> {
  __$$ListeningQuestionModelImplCopyWithImpl(
      _$ListeningQuestionModelImpl _value,
      $Res Function(_$ListeningQuestionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListeningQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? scriptIds = null,
    Object? questionText = null,
    Object? options = null,
    Object? correctAnswer = null,
  }) {
    return _then(_$ListeningQuestionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      scriptIds: null == scriptIds
          ? _value._scriptIds
          : scriptIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      questionText: null == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<ListeningOptionModel>,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListeningQuestionModelImpl implements _ListeningQuestionModel {
  const _$ListeningQuestionModelImpl(
      {required this.id,
      required final List<String> scriptIds,
      required this.questionText,
      required final List<ListeningOptionModel> options,
      required this.correctAnswer})
      : _scriptIds = scriptIds,
        _options = options;

  factory _$ListeningQuestionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListeningQuestionModelImplFromJson(json);

  @override
  final String id;
  final List<String> _scriptIds;
  @override
  List<String> get scriptIds {
    if (_scriptIds is EqualUnmodifiableListView) return _scriptIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scriptIds);
  }

  @override
  final String questionText;
  final List<ListeningOptionModel> _options;
  @override
  List<ListeningOptionModel> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  final String correctAnswer;

  @override
  String toString() {
    return 'ListeningQuestionModel(id: $id, scriptIds: $scriptIds, questionText: $questionText, options: $options, correctAnswer: $correctAnswer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListeningQuestionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._scriptIds, _scriptIds) &&
            (identical(other.questionText, questionText) ||
                other.questionText == questionText) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_scriptIds),
      questionText,
      const DeepCollectionEquality().hash(_options),
      correctAnswer);

  /// Create a copy of ListeningQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListeningQuestionModelImplCopyWith<_$ListeningQuestionModelImpl>
      get copyWith => __$$ListeningQuestionModelImplCopyWithImpl<
          _$ListeningQuestionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListeningQuestionModelImplToJson(
      this,
    );
  }
}

abstract class _ListeningQuestionModel implements ListeningQuestionModel {
  const factory _ListeningQuestionModel(
      {required final String id,
      required final List<String> scriptIds,
      required final String questionText,
      required final List<ListeningOptionModel> options,
      required final String correctAnswer}) = _$ListeningQuestionModelImpl;

  factory _ListeningQuestionModel.fromJson(Map<String, dynamic> json) =
      _$ListeningQuestionModelImpl.fromJson;

  @override
  String get id;
  @override
  List<String> get scriptIds;
  @override
  String get questionText;
  @override
  List<ListeningOptionModel> get options;
  @override
  String get correctAnswer;

  /// Create a copy of ListeningQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListeningQuestionModelImplCopyWith<_$ListeningQuestionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
