// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_password_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateUserPasswordResponseModel _$UpdateUserPasswordResponseModelFromJson(
    Map<String, dynamic> json) {
  return _UpdateUserPasswordResponseModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserPasswordResponseModel {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateUserPasswordResponseModelCopyWith<UpdateUserPasswordResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserPasswordResponseModelCopyWith<$Res> {
  factory $UpdateUserPasswordResponseModelCopyWith(
          UpdateUserPasswordResponseModel value,
          $Res Function(UpdateUserPasswordResponseModel) then) =
      _$UpdateUserPasswordResponseModelCopyWithImpl<$Res,
          UpdateUserPasswordResponseModel>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$UpdateUserPasswordResponseModelCopyWithImpl<$Res,
        $Val extends UpdateUserPasswordResponseModel>
    implements $UpdateUserPasswordResponseModelCopyWith<$Res> {
  _$UpdateUserPasswordResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateUserPasswordResponseModelCopyWith<$Res>
    implements $UpdateUserPasswordResponseModelCopyWith<$Res> {
  factory _$$_UpdateUserPasswordResponseModelCopyWith(
          _$_UpdateUserPasswordResponseModel value,
          $Res Function(_$_UpdateUserPasswordResponseModel) then) =
      __$$_UpdateUserPasswordResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_UpdateUserPasswordResponseModelCopyWithImpl<$Res>
    extends _$UpdateUserPasswordResponseModelCopyWithImpl<$Res,
        _$_UpdateUserPasswordResponseModel>
    implements _$$_UpdateUserPasswordResponseModelCopyWith<$Res> {
  __$$_UpdateUserPasswordResponseModelCopyWithImpl(
      _$_UpdateUserPasswordResponseModel _value,
      $Res Function(_$_UpdateUserPasswordResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_UpdateUserPasswordResponseModel(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateUserPasswordResponseModel
    implements _UpdateUserPasswordResponseModel {
  const _$_UpdateUserPasswordResponseModel({required this.message});

  factory _$_UpdateUserPasswordResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_UpdateUserPasswordResponseModelFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'UpdateUserPasswordResponseModel(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateUserPasswordResponseModel &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateUserPasswordResponseModelCopyWith<
          _$_UpdateUserPasswordResponseModel>
      get copyWith => __$$_UpdateUserPasswordResponseModelCopyWithImpl<
          _$_UpdateUserPasswordResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateUserPasswordResponseModelToJson(
      this,
    );
  }
}

abstract class _UpdateUserPasswordResponseModel
    implements UpdateUserPasswordResponseModel {
  const factory _UpdateUserPasswordResponseModel(
      {required final String message}) = _$_UpdateUserPasswordResponseModel;

  factory _UpdateUserPasswordResponseModel.fromJson(Map<String, dynamic> json) =
      _$_UpdateUserPasswordResponseModel.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateUserPasswordResponseModelCopyWith<
          _$_UpdateUserPasswordResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
