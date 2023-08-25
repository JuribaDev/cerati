// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_account_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateUserAccountRequestModel _$UpdateUserAccountRequestModelFromJson(Map<String, dynamic> json) {
  return _UpdateUserAccountRequestModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserAccountRequestModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateUserAccountRequestModelCopyWith<UpdateUserAccountRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserAccountRequestModelCopyWith<$Res> {
  factory $UpdateUserAccountRequestModelCopyWith(
          UpdateUserAccountRequestModel value, $Res Function(UpdateUserAccountRequestModel) then) =
      _$UpdateUserAccountRequestModelCopyWithImpl<$Res, UpdateUserAccountRequestModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String email});
}

/// @nodoc
class _$UpdateUserAccountRequestModelCopyWithImpl<$Res, $Val extends UpdateUserAccountRequestModel>
    implements $UpdateUserAccountRequestModelCopyWith<$Res> {
  _$UpdateUserAccountRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateUserAccountRequestModelCopyWith<$Res> implements $UpdateUserAccountRequestModelCopyWith<$Res> {
  factory _$$_UpdateUserAccountRequestModelCopyWith(
          _$_UpdateUserAccountRequestModel value, $Res Function(_$_UpdateUserAccountRequestModel) then) =
      __$$_UpdateUserAccountRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String email});
}

/// @nodoc
class __$$_UpdateUserAccountRequestModelCopyWithImpl<$Res>
    extends _$UpdateUserAccountRequestModelCopyWithImpl<$Res, _$_UpdateUserAccountRequestModel>
    implements _$$_UpdateUserAccountRequestModelCopyWith<$Res> {
  __$$_UpdateUserAccountRequestModelCopyWithImpl(
      _$_UpdateUserAccountRequestModel _value, $Res Function(_$_UpdateUserAccountRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
  }) {
    return _then(_$_UpdateUserAccountRequestModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateUserAccountRequestModel implements _UpdateUserAccountRequestModel {
  const _$_UpdateUserAccountRequestModel(
      {required this.id,
      @JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') required this.lastName,
      required this.email});

  factory _$_UpdateUserAccountRequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateUserAccountRequestModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  final String email;

  @override
  String toString() {
    return 'UpdateUserAccountRequestModel(id: $id, firstName: $firstName, lastName: $lastName, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateUserAccountRequestModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) || other.firstName == firstName) &&
            (identical(other.lastName, lastName) || other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, firstName, lastName, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateUserAccountRequestModelCopyWith<_$_UpdateUserAccountRequestModel> get copyWith =>
      __$$_UpdateUserAccountRequestModelCopyWithImpl<_$_UpdateUserAccountRequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateUserAccountRequestModelToJson(
      this,
    );
  }
}

abstract class _UpdateUserAccountRequestModel implements UpdateUserAccountRequestModel {
  const factory _UpdateUserAccountRequestModel(
      {required final int id,
      @JsonKey(name: 'first_name') required final String firstName,
      @JsonKey(name: 'last_name') required final String lastName,
      required final String email}) = _$_UpdateUserAccountRequestModel;

  factory _UpdateUserAccountRequestModel.fromJson(Map<String, dynamic> json) =
      _$_UpdateUserAccountRequestModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateUserAccountRequestModelCopyWith<_$_UpdateUserAccountRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}
