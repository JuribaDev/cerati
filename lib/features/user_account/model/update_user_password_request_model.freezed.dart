// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_password_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateUserPasswordRequestModel _$UpdateUserPasswordRequestModelFromJson(
    Map<String, dynamic> json) {
  return _UpdateUserPasswordRequestModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserPasswordRequestModel {
  @JsonKey(name: 'current_password')
  String get currentPassword => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_password')
  String get newPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateUserPasswordRequestModelCopyWith<UpdateUserPasswordRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserPasswordRequestModelCopyWith<$Res> {
  factory $UpdateUserPasswordRequestModelCopyWith(
          UpdateUserPasswordRequestModel value,
          $Res Function(UpdateUserPasswordRequestModel) then) =
      _$UpdateUserPasswordRequestModelCopyWithImpl<$Res,
          UpdateUserPasswordRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_password') String currentPassword,
      @JsonKey(name: 'new_password') String newPassword});
}

/// @nodoc
class _$UpdateUserPasswordRequestModelCopyWithImpl<$Res,
        $Val extends UpdateUserPasswordRequestModel>
    implements $UpdateUserPasswordRequestModelCopyWith<$Res> {
  _$UpdateUserPasswordRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_value.copyWith(
      currentPassword: null == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateUserPasswordRequestModelCopyWith<$Res>
    implements $UpdateUserPasswordRequestModelCopyWith<$Res> {
  factory _$$_UpdateUserPasswordRequestModelCopyWith(
          _$_UpdateUserPasswordRequestModel value,
          $Res Function(_$_UpdateUserPasswordRequestModel) then) =
      __$$_UpdateUserPasswordRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_password') String currentPassword,
      @JsonKey(name: 'new_password') String newPassword});
}

/// @nodoc
class __$$_UpdateUserPasswordRequestModelCopyWithImpl<$Res>
    extends _$UpdateUserPasswordRequestModelCopyWithImpl<$Res,
        _$_UpdateUserPasswordRequestModel>
    implements _$$_UpdateUserPasswordRequestModelCopyWith<$Res> {
  __$$_UpdateUserPasswordRequestModelCopyWithImpl(
      _$_UpdateUserPasswordRequestModel _value,
      $Res Function(_$_UpdateUserPasswordRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_$_UpdateUserPasswordRequestModel(
      currentPassword: null == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateUserPasswordRequestModel
    implements _UpdateUserPasswordRequestModel {
  const _$_UpdateUserPasswordRequestModel(
      {@JsonKey(name: 'current_password') required this.currentPassword,
      @JsonKey(name: 'new_password') required this.newPassword});

  factory _$_UpdateUserPasswordRequestModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_UpdateUserPasswordRequestModelFromJson(json);

  @override
  @JsonKey(name: 'current_password')
  final String currentPassword;
  @override
  @JsonKey(name: 'new_password')
  final String newPassword;

  @override
  String toString() {
    return 'UpdateUserPasswordRequestModel(currentPassword: $currentPassword, newPassword: $newPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateUserPasswordRequestModel &&
            (identical(other.currentPassword, currentPassword) ||
                other.currentPassword == currentPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentPassword, newPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateUserPasswordRequestModelCopyWith<_$_UpdateUserPasswordRequestModel>
      get copyWith => __$$_UpdateUserPasswordRequestModelCopyWithImpl<
          _$_UpdateUserPasswordRequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateUserPasswordRequestModelToJson(
      this,
    );
  }
}

abstract class _UpdateUserPasswordRequestModel
    implements UpdateUserPasswordRequestModel {
  const factory _UpdateUserPasswordRequestModel(
          {@JsonKey(name: 'current_password')
              required final String currentPassword,
          @JsonKey(name: 'new_password')
              required final String newPassword}) =
      _$_UpdateUserPasswordRequestModel;

  factory _UpdateUserPasswordRequestModel.fromJson(Map<String, dynamic> json) =
      _$_UpdateUserPasswordRequestModel.fromJson;

  @override
  @JsonKey(name: 'current_password')
  String get currentPassword;
  @override
  @JsonKey(name: 'new_password')
  String get newPassword;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateUserPasswordRequestModelCopyWith<_$_UpdateUserPasswordRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}
