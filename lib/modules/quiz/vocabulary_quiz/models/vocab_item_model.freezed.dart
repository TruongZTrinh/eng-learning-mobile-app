// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vocab_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VocabItemModel _$VocabItemModelFromJson(Map<String, dynamic> json) {
  return _VocabItemModel.fromJson(json);
}

/// @nodoc
mixin _$VocabItemModel {
  String get word => throw _privateConstructorUsedError;
  String get imgPath => throw _privateConstructorUsedError;
  String get meaning => throw _privateConstructorUsedError;
  String get example => throw _privateConstructorUsedError;

  /// Serializes this VocabItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VocabItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VocabItemModelCopyWith<VocabItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VocabItemModelCopyWith<$Res> {
  factory $VocabItemModelCopyWith(
          VocabItemModel value, $Res Function(VocabItemModel) then) =
      _$VocabItemModelCopyWithImpl<$Res, VocabItemModel>;
  @useResult
  $Res call({String word, String imgPath, String meaning, String example});
}

/// @nodoc
class _$VocabItemModelCopyWithImpl<$Res, $Val extends VocabItemModel>
    implements $VocabItemModelCopyWith<$Res> {
  _$VocabItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VocabItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? imgPath = null,
    Object? meaning = null,
    Object? example = null,
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
      meaning: null == meaning
          ? _value.meaning
          : meaning // ignore: cast_nullable_to_non_nullable
              as String,
      example: null == example
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VocabItemModelImplCopyWith<$Res>
    implements $VocabItemModelCopyWith<$Res> {
  factory _$$VocabItemModelImplCopyWith(_$VocabItemModelImpl value,
          $Res Function(_$VocabItemModelImpl) then) =
      __$$VocabItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String word, String imgPath, String meaning, String example});
}

/// @nodoc
class __$$VocabItemModelImplCopyWithImpl<$Res>
    extends _$VocabItemModelCopyWithImpl<$Res, _$VocabItemModelImpl>
    implements _$$VocabItemModelImplCopyWith<$Res> {
  __$$VocabItemModelImplCopyWithImpl(
      _$VocabItemModelImpl _value, $Res Function(_$VocabItemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VocabItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? imgPath = null,
    Object? meaning = null,
    Object? example = null,
  }) {
    return _then(_$VocabItemModelImpl(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      imgPath: null == imgPath
          ? _value.imgPath
          : imgPath // ignore: cast_nullable_to_non_nullable
              as String,
      meaning: null == meaning
          ? _value.meaning
          : meaning // ignore: cast_nullable_to_non_nullable
              as String,
      example: null == example
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VocabItemModelImpl implements _VocabItemModel {
  const _$VocabItemModelImpl(
      {required this.word,
      required this.imgPath,
      required this.meaning,
      required this.example});

  factory _$VocabItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VocabItemModelImplFromJson(json);

  @override
  final String word;
  @override
  final String imgPath;
  @override
  final String meaning;
  @override
  final String example;

  @override
  String toString() {
    return 'VocabItemModel(word: $word, imgPath: $imgPath, meaning: $meaning, example: $example)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VocabItemModelImpl &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.imgPath, imgPath) || other.imgPath == imgPath) &&
            (identical(other.meaning, meaning) || other.meaning == meaning) &&
            (identical(other.example, example) || other.example == example));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, word, imgPath, meaning, example);

  /// Create a copy of VocabItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VocabItemModelImplCopyWith<_$VocabItemModelImpl> get copyWith =>
      __$$VocabItemModelImplCopyWithImpl<_$VocabItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VocabItemModelImplToJson(
      this,
    );
  }
}

abstract class _VocabItemModel implements VocabItemModel {
  const factory _VocabItemModel(
      {required final String word,
      required final String imgPath,
      required final String meaning,
      required final String example}) = _$VocabItemModelImpl;

  factory _VocabItemModel.fromJson(Map<String, dynamic> json) =
      _$VocabItemModelImpl.fromJson;

  @override
  String get word;
  @override
  String get imgPath;
  @override
  String get meaning;
  @override
  String get example;

  /// Create a copy of VocabItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VocabItemModelImplCopyWith<_$VocabItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
