// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  LoginRequestModel get loginRequestModel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequestModel loginRequestModel) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginRequestModel loginRequestModel)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequestModel loginRequestModel)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginEventCopyWith<LoginEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
  @useResult
  $Res call({LoginRequestModel loginRequestModel});

  $LoginRequestModelCopyWith<$Res> get loginRequestModel;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginRequestModel = null,
  }) {
    return _then(_value.copyWith(
      loginRequestModel: null == loginRequestModel
          ? _value.loginRequestModel
          : loginRequestModel // ignore: cast_nullable_to_non_nullable
              as LoginRequestModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginRequestModelCopyWith<$Res> get loginRequestModel {
    return $LoginRequestModelCopyWith<$Res>(_value.loginRequestModel, (value) {
      return _then(_value.copyWith(loginRequestModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoginCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory _$$_LoginCopyWith(_$_Login value, $Res Function(_$_Login) then) = __$$_LoginCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoginRequestModel loginRequestModel});

  @override
  $LoginRequestModelCopyWith<$Res> get loginRequestModel;
}

/// @nodoc
class __$$_LoginCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res, _$_Login> implements _$$_LoginCopyWith<$Res> {
  __$$_LoginCopyWithImpl(_$_Login _value, $Res Function(_$_Login) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginRequestModel = null,
  }) {
    return _then(_$_Login(
      loginRequestModel: null == loginRequestModel
          ? _value.loginRequestModel
          : loginRequestModel // ignore: cast_nullable_to_non_nullable
              as LoginRequestModel,
    ));
  }
}

/// @nodoc

class _$_Login implements _Login {
  const _$_Login({required this.loginRequestModel});

  @override
  final LoginRequestModel loginRequestModel;

  @override
  String toString() {
    return 'LoginEvent.login(loginRequestModel: $loginRequestModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Login &&
            (identical(other.loginRequestModel, loginRequestModel) || other.loginRequestModel == loginRequestModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginRequestModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginCopyWith<_$_Login> get copyWith => __$$_LoginCopyWithImpl<_$_Login>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequestModel loginRequestModel) login,
  }) {
    return login(loginRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginRequestModel loginRequestModel)? login,
  }) {
    return login?.call(loginRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequestModel loginRequestModel)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(loginRequestModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements LoginEvent {
  const factory _Login({required final LoginRequestModel loginRequestModel}) = _$_Login;

  @override
  LoginRequestModel get loginRequestModel;
  @override
  @JsonKey(ignore: true)
  _$$_LoginCopyWith<_$_Login> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonState commonState) commonState,
    required TResult Function(LoginResponseModel loginResponseModel) loginSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonState commonState)? commonState,
    TResult? Function(LoginResponseModel loginResponseModel)? loginSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonState commonState)? commonState,
    TResult Function(LoginResponseModel loginResponseModel)? loginSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenericStatue value) commonState,
    required TResult Function(_Success value) loginSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenericStatue value)? commonState,
    TResult? Function(_Success value)? loginSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenericStatue value)? commonState,
    TResult Function(_Success value)? loginSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GenericStatueCopyWith<$Res> {
  factory _$$_GenericStatueCopyWith(_$_GenericStatue value, $Res Function(_$_GenericStatue) then) =
      __$$_GenericStatueCopyWithImpl<$Res>;
  @useResult
  $Res call({CommonState commonState});

  $CommonStateCopyWith<$Res> get commonState;
}

/// @nodoc
class __$$_GenericStatueCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res, _$_GenericStatue>
    implements _$$_GenericStatueCopyWith<$Res> {
  __$$_GenericStatueCopyWithImpl(_$_GenericStatue _value, $Res Function(_$_GenericStatue) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commonState = null,
  }) {
    return _then(_$_GenericStatue(
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

class _$_GenericStatue implements _GenericStatue {
  const _$_GenericStatue({required this.commonState});

  @override
  final CommonState commonState;

  @override
  String toString() {
    return 'LoginState.commonState(commonState: $commonState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenericStatue &&
            (identical(other.commonState, commonState) || other.commonState == commonState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commonState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenericStatueCopyWith<_$_GenericStatue> get copyWith =>
      __$$_GenericStatueCopyWithImpl<_$_GenericStatue>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonState commonState) commonState,
    required TResult Function(LoginResponseModel loginResponseModel) loginSuccess,
  }) {
    return commonState(this.commonState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonState commonState)? commonState,
    TResult? Function(LoginResponseModel loginResponseModel)? loginSuccess,
  }) {
    return commonState?.call(this.commonState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonState commonState)? commonState,
    TResult Function(LoginResponseModel loginResponseModel)? loginSuccess,
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
    required TResult Function(_GenericStatue value) commonState,
    required TResult Function(_Success value) loginSuccess,
  }) {
    return commonState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenericStatue value)? commonState,
    TResult? Function(_Success value)? loginSuccess,
  }) {
    return commonState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenericStatue value)? commonState,
    TResult Function(_Success value)? loginSuccess,
    required TResult orElse(),
  }) {
    if (commonState != null) {
      return commonState(this);
    }
    return orElse();
  }
}

abstract class _GenericStatue implements LoginState {
  const factory _GenericStatue({required final CommonState commonState}) = _$_GenericStatue;

  CommonState get commonState;
  @JsonKey(ignore: true)
  _$$_GenericStatueCopyWith<_$_GenericStatue> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(_$_Success value, $Res Function(_$_Success) then) = __$$_SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginResponseModel loginResponseModel});

  $LoginResponseModelCopyWith<$Res> get loginResponseModel;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginResponseModel = null,
  }) {
    return _then(_$_Success(
      loginResponseModel: null == loginResponseModel
          ? _value.loginResponseModel
          : loginResponseModel // ignore: cast_nullable_to_non_nullable
              as LoginResponseModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginResponseModelCopyWith<$Res> get loginResponseModel {
    return $LoginResponseModelCopyWith<$Res>(_value.loginResponseModel, (value) {
      return _then(_value.copyWith(loginResponseModel: value));
    });
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success({required this.loginResponseModel});

  @override
  final LoginResponseModel loginResponseModel;

  @override
  String toString() {
    return 'LoginState.loginSuccess(loginResponseModel: $loginResponseModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.loginResponseModel, loginResponseModel) ||
                other.loginResponseModel == loginResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginResponseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith => __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonState commonState) commonState,
    required TResult Function(LoginResponseModel loginResponseModel) loginSuccess,
  }) {
    return loginSuccess(loginResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonState commonState)? commonState,
    TResult? Function(LoginResponseModel loginResponseModel)? loginSuccess,
  }) {
    return loginSuccess?.call(loginResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonState commonState)? commonState,
    TResult Function(LoginResponseModel loginResponseModel)? loginSuccess,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(loginResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenericStatue value) commonState,
    required TResult Function(_Success value) loginSuccess,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenericStatue value)? commonState,
    TResult? Function(_Success value)? loginSuccess,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenericStatue value)? commonState,
    TResult Function(_Success value)? loginSuccess,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class _Success implements LoginState {
  const factory _Success({required final LoginResponseModel loginResponseModel}) = _$_Success;

  LoginResponseModel get loginResponseModel;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith => throw _privateConstructorUsedError;
}
