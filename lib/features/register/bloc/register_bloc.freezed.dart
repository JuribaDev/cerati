// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterEvent {
  RegisterRequestModel get registerRequestModel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterRequestModel registerRequestModel) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterRequestModel registerRequestModel)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterRequestModel registerRequestModel)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterEventCopyWith<RegisterEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res, RegisterEvent>;
  @useResult
  $Res call({RegisterRequestModel registerRequestModel});

  $RegisterRequestModelCopyWith<$Res> get registerRequestModel;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res, $Val extends RegisterEvent> implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registerRequestModel = null,
  }) {
    return _then(_value.copyWith(
      registerRequestModel: null == registerRequestModel
          ? _value.registerRequestModel
          : registerRequestModel // ignore: cast_nullable_to_non_nullable
              as RegisterRequestModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RegisterRequestModelCopyWith<$Res> get registerRequestModel {
    return $RegisterRequestModelCopyWith<$Res>(_value.registerRequestModel, (value) {
      return _then(_value.copyWith(registerRequestModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RegisterCopyWith<$Res> implements $RegisterEventCopyWith<$Res> {
  factory _$$_RegisterCopyWith(_$_Register value, $Res Function(_$_Register) then) = __$$_RegisterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RegisterRequestModel registerRequestModel});

  @override
  $RegisterRequestModelCopyWith<$Res> get registerRequestModel;
}

/// @nodoc
class __$$_RegisterCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res, _$_Register>
    implements _$$_RegisterCopyWith<$Res> {
  __$$_RegisterCopyWithImpl(_$_Register _value, $Res Function(_$_Register) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registerRequestModel = null,
  }) {
    return _then(_$_Register(
      registerRequestModel: null == registerRequestModel
          ? _value.registerRequestModel
          : registerRequestModel // ignore: cast_nullable_to_non_nullable
              as RegisterRequestModel,
    ));
  }
}

/// @nodoc

class _$_Register implements _Register {
  const _$_Register({required this.registerRequestModel});

  @override
  final RegisterRequestModel registerRequestModel;

  @override
  String toString() {
    return 'RegisterEvent.register(registerRequestModel: $registerRequestModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Register &&
            (identical(other.registerRequestModel, registerRequestModel) ||
                other.registerRequestModel == registerRequestModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, registerRequestModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterCopyWith<_$_Register> get copyWith => __$$_RegisterCopyWithImpl<_$_Register>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterRequestModel registerRequestModel) register,
  }) {
    return register(registerRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterRequestModel registerRequestModel)? register,
  }) {
    return register?.call(registerRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterRequestModel registerRequestModel)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(registerRequestModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements RegisterEvent {
  const factory _Register({required final RegisterRequestModel registerRequestModel}) = _$_Register;

  @override
  RegisterRequestModel get registerRequestModel;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterCopyWith<_$_Register> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonState commonState) commonState,
    required TResult Function(LoginResponseModel registerResponseModel) registerSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonState commonState)? commonState,
    TResult? Function(LoginResponseModel registerResponseModel)? registerSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonState commonState)? commonState,
    TResult Function(LoginResponseModel registerResponseModel)? registerSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) commonState,
    required TResult Function(_RegisterSuccess value) registerSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success value)? commonState,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? commonState,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState> implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(_$_Success value, $Res Function(_$_Success) then) = __$$_SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({CommonState commonState});

  $CommonStateCopyWith<$Res> get commonState;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res> extends _$RegisterStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commonState = null,
  }) {
    return _then(_$_Success(
      commonState: null == commonState
          ? _value.commonState
          : commonState // ignore: cast_nullable_to_non_nullable
              as CommonState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CommonStateCopyWith<$Res> get commonState {
    return $CommonStateCopyWith<$Res>(_value.commonState, (value) {
      return _then(_value.copyWith(commonState: value));
    });
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success({required this.commonState});

  @override
  final CommonState commonState;

  @override
  String toString() {
    return 'RegisterState.commonState(commonState: $commonState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.commonState, commonState) || other.commonState == commonState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commonState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith => __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonState commonState) commonState,
    required TResult Function(LoginResponseModel registerResponseModel) registerSuccess,
  }) {
    return commonState(this.commonState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonState commonState)? commonState,
    TResult? Function(LoginResponseModel registerResponseModel)? registerSuccess,
  }) {
    return commonState?.call(this.commonState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonState commonState)? commonState,
    TResult Function(LoginResponseModel registerResponseModel)? registerSuccess,
    required TResult orElse(),
  }) {
    if (commonState != null) {
      return commonState(this.commonState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) commonState,
    required TResult Function(_RegisterSuccess value) registerSuccess,
  }) {
    return commonState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success value)? commonState,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
  }) {
    return commonState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? commonState,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    required TResult orElse(),
  }) {
    if (commonState != null) {
      return commonState(this);
    }
    return orElse();
  }
}

abstract class _Success implements RegisterState {
  const factory _Success({required final CommonState commonState}) = _$_Success;

  CommonState get commonState;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RegisterSuccessCopyWith<$Res> {
  factory _$$_RegisterSuccessCopyWith(_$_RegisterSuccess value, $Res Function(_$_RegisterSuccess) then) =
      __$$_RegisterSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginResponseModel registerResponseModel});

  $LoginResponseModelCopyWith<$Res> get registerResponseModel;
}

/// @nodoc
class __$$_RegisterSuccessCopyWithImpl<$Res> extends _$RegisterStateCopyWithImpl<$Res, _$_RegisterSuccess>
    implements _$$_RegisterSuccessCopyWith<$Res> {
  __$$_RegisterSuccessCopyWithImpl(_$_RegisterSuccess _value, $Res Function(_$_RegisterSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registerResponseModel = null,
  }) {
    return _then(_$_RegisterSuccess(
      registerResponseModel: null == registerResponseModel
          ? _value.registerResponseModel
          : registerResponseModel // ignore: cast_nullable_to_non_nullable
              as LoginResponseModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginResponseModelCopyWith<$Res> get registerResponseModel {
    return $LoginResponseModelCopyWith<$Res>(_value.registerResponseModel, (value) {
      return _then(_value.copyWith(registerResponseModel: value));
    });
  }
}

/// @nodoc

class _$_RegisterSuccess implements _RegisterSuccess {
  const _$_RegisterSuccess({required this.registerResponseModel});

  @override
  final LoginResponseModel registerResponseModel;

  @override
  String toString() {
    return 'RegisterState.registerSuccess(registerResponseModel: $registerResponseModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterSuccess &&
            (identical(other.registerResponseModel, registerResponseModel) ||
                other.registerResponseModel == registerResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, registerResponseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterSuccessCopyWith<_$_RegisterSuccess> get copyWith =>
      __$$_RegisterSuccessCopyWithImpl<_$_RegisterSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonState commonState) commonState,
    required TResult Function(LoginResponseModel registerResponseModel) registerSuccess,
  }) {
    return registerSuccess(registerResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonState commonState)? commonState,
    TResult? Function(LoginResponseModel registerResponseModel)? registerSuccess,
  }) {
    return registerSuccess?.call(registerResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonState commonState)? commonState,
    TResult Function(LoginResponseModel registerResponseModel)? registerSuccess,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess(registerResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) commonState,
    required TResult Function(_RegisterSuccess value) registerSuccess,
  }) {
    return registerSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success value)? commonState,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
  }) {
    return registerSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? commonState,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess(this);
    }
    return orElse();
  }
}

abstract class _RegisterSuccess implements RegisterState {
  const factory _RegisterSuccess({required final LoginResponseModel registerResponseModel}) = _$_RegisterSuccess;

  LoginResponseModel get registerResponseModel;
  @JsonKey(ignore: true)
  _$$_RegisterSuccessCopyWith<_$_RegisterSuccess> get copyWith => throw _privateConstructorUsedError;
}
