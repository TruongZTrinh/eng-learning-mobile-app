// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listening_option_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListeningOptionModel _$ListeningOptionModelFromJson(Map<String, dynamic> json) {
  return _ListeningOptionModel.fromJson(json);
}

/// @nodoc
mixin _$ListeningOptionModel {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  /// Serializes this ListeningOptionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListeningOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListeningOptionModelCopyWith<ListeningOptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListeningOptionModelCopyWith<$Res> {
  factory $ListeningOptionModelCopyWith(ListeningOptionModel value,
          $Res Function(ListeningOptionModel) then) =
      _$ListeningOptionModelCopyWithImpl<$Res, ListeningOptionModel>;
  @useResult
  $Res call({String id, String text});
}

/// @nodoc
class _$ListeningOptionModelCopyWithImpl<$Res,
        $Val extends ListeningOptionModel>
    implements $ListeningOptionModelCopyWith<$Res> {
  _$ListeningOptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListeningOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListeningOptionModelImplCopyWith<$Res>
    implements $ListeningOptionModelCopyWith<$Res> {
  factory _$$ListeningOptionModelImplCopyWith(_$ListeningOptionModelImpl value,
          $Res Function(_$ListeningOptionModelImpl) then) =
      __$$ListeningOptionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String text});
}

/// @nodoc
class __$$ListeningOptionModelImplCopyWithImpl<$Res>
    extends _$ListeningOptionModelCopyWithImpl<$Res, _$ListeningOptionModelImpl>
    implements _$$ListeningOptionModelImplCopyWith<$Res> {
  __$$ListeningOptionModelImplCopyWithImpl(_$ListeningOptionModelImpl _value,
      $Res Function(_$ListeningOptionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListeningOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
  }) {
    return _then(_$ListeningOptionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListeningOptionModelImpl implements _ListeningOptionModel {
  const _$ListeningOptionModelImpl({required this.id, required this.text});

  factory _$ListeningOptionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListeningOptionModelImplFromJson(json);

  @override
  final String id;
  @override
  final String text;

  @override
  String toString() {
    return 'ListeningOptionModel(id: $id, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListeningOptionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, text);

  /// Create a copy of ListeningOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListeningOptionModelImplCopyWith<_$ListeningOptionModelImpl>
      get copyWith =>
          __$$ListeningOptionModelImplCopyWithImpl<_$ListeningOptionModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListeningOptionModelImplToJson(
      this,
    );
  }
}

abstract class _ListeningOptionModel implements ListeningOptionModel {
  const factory _ListeningOptionModel(
      {required final String id,
      required final String text}) = _$ListeningOptionModelImpl;

  factory _ListeningOptionModel.fromJson(Map<String, dynamic> json) =
      _$ListeningOptionModelImpl.fromJson;

  @override
  String get id;
  @override
  String get text;

  /// Create a copy of ListeningOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListeningOptionModelImplCopyWith<_$ListeningOptionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
