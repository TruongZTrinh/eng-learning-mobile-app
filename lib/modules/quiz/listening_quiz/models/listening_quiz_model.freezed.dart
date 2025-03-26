// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listening_quiz_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListeningQuizModel _$ListeningQuizModelFromJson(Map<String, dynamic> json) {
  return _ListeningQuizModel.fromJson(json);
}

/// @nodoc
mixin _$ListeningQuizModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<ListeningScriptModel> get scripts => throw _privateConstructorUsedError;
  List<ListeningQuestionModel>? get questions =>
      throw _privateConstructorUsedError;

  /// Serializes this ListeningQuizModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListeningQuizModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListeningQuizModelCopyWith<ListeningQuizModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListeningQuizModelCopyWith<$Res> {
  factory $ListeningQuizModelCopyWith(
          ListeningQuizModel value, $Res Function(ListeningQuizModel) then) =
      _$ListeningQuizModelCopyWithImpl<$Res, ListeningQuizModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      List<ListeningScriptModel> scripts,
      List<ListeningQuestionModel>? questions});
}

/// @nodoc
class _$ListeningQuizModelCopyWithImpl<$Res, $Val extends ListeningQuizModel>
    implements $ListeningQuizModelCopyWith<$Res> {
  _$ListeningQuizModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListeningQuizModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? scripts = null,
    Object? questions = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      scripts: null == scripts
          ? _value.scripts
          : scripts // ignore: cast_nullable_to_non_nullable
              as List<ListeningScriptModel>,
      questions: freezed == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<ListeningQuestionModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListeningQuizModelImplCopyWith<$Res>
    implements $ListeningQuizModelCopyWith<$Res> {
  factory _$$ListeningQuizModelImplCopyWith(_$ListeningQuizModelImpl value,
          $Res Function(_$ListeningQuizModelImpl) then) =
      __$$ListeningQuizModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      List<ListeningScriptModel> scripts,
      List<ListeningQuestionModel>? questions});
}

/// @nodoc
class __$$ListeningQuizModelImplCopyWithImpl<$Res>
    extends _$ListeningQuizModelCopyWithImpl<$Res, _$ListeningQuizModelImpl>
    implements _$$ListeningQuizModelImplCopyWith<$Res> {
  __$$ListeningQuizModelImplCopyWithImpl(_$ListeningQuizModelImpl _value,
      $Res Function(_$ListeningQuizModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListeningQuizModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? scripts = null,
    Object? questions = freezed,
  }) {
    return _then(_$ListeningQuizModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      scripts: null == scripts
          ? _value._scripts
          : scripts // ignore: cast_nullable_to_non_nullable
              as List<ListeningScriptModel>,
      questions: freezed == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<ListeningQuestionModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListeningQuizModelImpl implements _ListeningQuizModel {
  const _$ListeningQuizModelImpl(
      {required this.id,
      required this.title,
      required this.description,
      required final List<ListeningScriptModel> scripts,
      required final List<ListeningQuestionModel>? questions})
      : _scripts = scripts,
        _questions = questions;

  factory _$ListeningQuizModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListeningQuizModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  final List<ListeningScriptModel> _scripts;
  @override
  List<ListeningScriptModel> get scripts {
    if (_scripts is EqualUnmodifiableListView) return _scripts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scripts);
  }

  final List<ListeningQuestionModel>? _questions;
  @override
  List<ListeningQuestionModel>? get questions {
    final value = _questions;
    if (value == null) return null;
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ListeningQuizModel(id: $id, title: $title, description: $description, scripts: $scripts, questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListeningQuizModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._scripts, _scripts) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      const DeepCollectionEquality().hash(_scripts),
      const DeepCollectionEquality().hash(_questions));

  /// Create a copy of ListeningQuizModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListeningQuizModelImplCopyWith<_$ListeningQuizModelImpl> get copyWith =>
      __$$ListeningQuizModelImplCopyWithImpl<_$ListeningQuizModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListeningQuizModelImplToJson(
      this,
    );
  }
}

abstract class _ListeningQuizModel implements ListeningQuizModel {
  const factory _ListeningQuizModel(
          {required final String id,
          required final String title,
          required final String description,
          required final List<ListeningScriptModel> scripts,
          required final List<ListeningQuestionModel>? questions}) =
      _$ListeningQuizModelImpl;

  factory _ListeningQuizModel.fromJson(Map<String, dynamic> json) =
      _$ListeningQuizModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  List<ListeningScriptModel> get scripts;
  @override
  List<ListeningQuestionModel>? get questions;

  /// Create a copy of ListeningQuizModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListeningQuizModelImplCopyWith<_$ListeningQuizModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
