// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserAccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserAccount,
    required TResult Function(
            UpdateUserAccountRequestModel updateUserAccountRequestModel)
        updateUserAccount,
    required TResult Function(
            UpdateUserPasswordRequestModel updateUserPasswordRequestModel)
        updateUserPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserAccount,
    TResult? Function(
            UpdateUserAccountRequestModel updateUserAccountRequestModel)?
        updateUserAccount,
    TResult? Function(
            UpdateUserPasswordRequestModel updateUserPasswordRequestModel)?
        updateUserPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserAccount,
    TResult Function(
            UpdateUserAccountRequestModel updateUserAccountRequestModel)?
        updateUserAccount,
    TResult Function(
            UpdateUserPasswordRequestModel updateUserPasswordRequestModel)?
        updateUserPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserAccount value) getUserAccount,
    required TResult Function(_UpdateUserAccount value) updateUserAccount,
    required TResult Function(_UpdateUserPassword value) updateUserPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserAccount value)? getUserAccount,
    TResult? Function(_UpdateUserAccount value)? updateUserAccount,
    TResult? Function(_UpdateUserPassword value)? updateUserPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserAccount value)? getUserAccount,
    TResult Function(_UpdateUserAccount value)? updateUserAccount,
    TResult Function(_UpdateUserPassword value)? updateUserPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAccountEventCopyWith<$Res> {
  factory $UserAccountEventCopyWith(
          UserAccountEvent value, $Res Function(UserAccountEvent) then) =
      _$UserAccountEventCopyWithImpl<$Res, UserAccountEvent>;
}

/// @nodoc
class _$UserAccountEventCopyWithImpl<$Res, $Val extends UserAccountEvent>
    implements $UserAccountEventCopyWith<$Res> {
  _$UserAccountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetUserAccountImplCopyWith<$Res> {
  factory _$$GetUserAccountImplCopyWith(_$GetUserAccountImpl value,
          $Res Function(_$GetUserAccountImpl) then) =
      __$$GetUserAccountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserAccountImplCopyWithImpl<$Res>
    extends _$UserAccountEventCopyWithImpl<$Res, _$GetUserAccountImpl>
    implements _$$GetUserAccountImplCopyWith<$Res> {
  __$$GetUserAccountImplCopyWithImpl(
      _$GetUserAccountImpl _value, $Res Function(_$GetUserAccountImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUserAccountImpl implements _GetUserAccount {
  const _$GetUserAccountImpl();

  @override
  String toString() {
    return 'UserAccountEvent.getUserAccount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserAccountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserAccount,
    required TResult Function(
            UpdateUserAccountRequestModel updateUserAccountRequestModel)
        updateUserAccount,
    required TResult Function(
            UpdateUserPasswordRequestModel updateUserPasswordRequestModel)
        updateUserPassword,
  }) {
    return getUserAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserAccount,
    TResult? Function(
            UpdateUserAccountRequestModel updateUserAccountRequestModel)?
        updateUserAccount,
    TResult? Function(
            UpdateUserPasswordRequestModel updateUserPasswordRequestModel)?
        updateUserPassword,
  }) {
    return getUserAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserAccount,
    TResult Function(
            UpdateUserAccountRequestModel updateUserAccountRequestModel)?
        updateUserAccount,
    TResult Function(
            UpdateUserPasswordRequestModel updateUserPasswordRequestModel)?
        updateUserPassword,
    required TResult orElse(),
  }) {
    if (getUserAccount != null) {
      return getUserAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserAccount value) getUserAccount,
    required TResult Function(_UpdateUserAccount value) updateUserAccount,
    required TResult Function(_UpdateUserPassword value) updateUserPassword,
  }) {
    return getUserAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserAccount value)? getUserAccount,
    TResult? Function(_UpdateUserAccount value)? updateUserAccount,
    TResult? Function(_UpdateUserPassword value)? updateUserPassword,
  }) {
    return getUserAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserAccount value)? getUserAccount,
    TResult Function(_UpdateUserAccount value)? updateUserAccount,
    TResult Function(_UpdateUserPassword value)? updateUserPassword,
    required TResult orElse(),
  }) {
    if (getUserAccount != null) {
      return getUserAccount(this);
    }
    return orElse();
  }
}

abstract class _GetUserAccount implements UserAccountEvent {
  const factory _GetUserAccount() = _$GetUserAccountImpl;
}

/// @nodoc
abstract class _$$UpdateUserAccountImplCopyWith<$Res> {
  factory _$$UpdateUserAccountImplCopyWith(_$UpdateUserAccountImpl value,
          $Res Function(_$UpdateUserAccountImpl) then) =
      __$$UpdateUserAccountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateUserAccountRequestModel updateUserAccountRequestModel});

  $UpdateUserAccountRequestModelCopyWith<$Res>
      get updateUserAccountRequestModel;
}

/// @nodoc
class __$$UpdateUserAccountImplCopyWithImpl<$Res>
    extends _$UserAccountEventCopyWithImpl<$Res, _$UpdateUserAccountImpl>
    implements _$$UpdateUserAccountImplCopyWith<$Res> {
  __$$UpdateUserAccountImplCopyWithImpl(_$UpdateUserAccountImpl _value,
      $Res Function(_$UpdateUserAccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateUserAccountRequestModel = null,
  }) {
    return _then(_$UpdateUserAccountImpl(
      updateUserAccountRequestModel: null == updateUserAccountRequestModel
          ? _value.updateUserAccountRequestModel
          : updateUserAccountRequestModel // ignore: cast_nullable_to_non_nullable
              as UpdateUserAccountRequestModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdateUserAccountRequestModelCopyWith<$Res>
      get updateUserAccountRequestModel {
    return $UpdateUserAccountRequestModelCopyWith<$Res>(
        _value.updateUserAccountRequestModel, (value) {
      return _then(_value.copyWith(updateUserAccountRequestModel: value));
    });
  }
}

/// @nodoc

class _$UpdateUserAccountImpl implements _UpdateUserAccount {
  const _$UpdateUserAccountImpl({required this.updateUserAccountRequestModel});

  @override
  final UpdateUserAccountRequestModel updateUserAccountRequestModel;

  @override
  String toString() {
    return 'UserAccountEvent.updateUserAccount(updateUserAccountRequestModel: $updateUserAccountRequestModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserAccountImpl &&
            (identical(other.updateUserAccountRequestModel,
                    updateUserAccountRequestModel) ||
                other.updateUserAccountRequestModel ==
                    updateUserAccountRequestModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updateUserAccountRequestModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserAccountImplCopyWith<_$UpdateUserAccountImpl> get copyWith =>
      __$$UpdateUserAccountImplCopyWithImpl<_$UpdateUserAccountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserAccount,
    required TResult Function(
            UpdateUserAccountRequestModel updateUserAccountRequestModel)
        updateUserAccount,
    required TResult Function(
            UpdateUserPasswordRequestModel updateUserPasswordRequestModel)
        updateUserPassword,
  }) {
    return updateUserAccount(updateUserAccountRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserAccount,
    TResult? Function(
            UpdateUserAccountRequestModel updateUserAccountRequestModel)?
        updateUserAccount,
    TResult? Function(
            UpdateUserPasswordRequestModel updateUserPasswordRequestModel)?
        updateUserPassword,
  }) {
    return updateUserAccount?.call(updateUserAccountRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserAccount,
    TResult Function(
            UpdateUserAccountRequestModel updateUserAccountRequestModel)?
        updateUserAccount,
    TResult Function(
            UpdateUserPasswordRequestModel updateUserPasswordRequestModel)?
        updateUserPassword,
    required TResult orElse(),
  }) {
    if (updateUserAccount != null) {
      return updateUserAccount(updateUserAccountRequestModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserAccount value) getUserAccount,
    required TResult Function(_UpdateUserAccount value) updateUserAccount,
    required TResult Function(_UpdateUserPassword value) updateUserPassword,
  }) {
    return updateUserAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserAccount value)? getUserAccount,
    TResult? Function(_UpdateUserAccount value)? updateUserAccount,
    TResult? Function(_UpdateUserPassword value)? updateUserPassword,
  }) {
    return updateUserAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserAccount value)? getUserAccount,
    TResult Function(_UpdateUserAccount value)? updateUserAccount,
    TResult Function(_UpdateUserPassword value)? updateUserPassword,
    required TResult orElse(),
  }) {
    if (updateUserAccount != null) {
      return updateUserAccount(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserAccount implements UserAccountEvent {
  const factory _UpdateUserAccount(
      {required final UpdateUserAccountRequestModel
          updateUserAccountRequestModel}) = _$UpdateUserAccountImpl;

  UpdateUserAccountRequestModel get updateUserAccountRequestModel;
  @JsonKey(ignore: true)
  _$$UpdateUserAccountImplCopyWith<_$UpdateUserAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserPasswordImplCopyWith<$Res> {
  factory _$$UpdateUserPasswordImplCopyWith(_$UpdateUserPasswordImpl value,
          $Res Function(_$UpdateUserPasswordImpl) then) =
      __$$UpdateUserPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateUserPasswordRequestModel updateUserPasswordRequestModel});

  $UpdateUserPasswordRequestModelCopyWith<$Res>
      get updateUserPasswordRequestModel;
}

/// @nodoc
class __$$UpdateUserPasswordImplCopyWithImpl<$Res>
    extends _$UserAccountEventCopyWithImpl<$Res, _$UpdateUserPasswordImpl>
    implements _$$UpdateUserPasswordImplCopyWith<$Res> {
  __$$UpdateUserPasswordImplCopyWithImpl(_$UpdateUserPasswordImpl _value,
      $Res Function(_$UpdateUserPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateUserPasswordRequestModel = null,
  }) {
    return _then(_$UpdateUserPasswordImpl(
      updateUserPasswordRequestModel: null == updateUserPasswordRequestModel
          ? _value.updateUserPasswordRequestModel
          : updateUserPasswordRequestModel // ignore: cast_nullable_to_non_nullable
              as UpdateUserPasswordRequestModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdateUserPasswordRequestModelCopyWith<$Res>
      get updateUserPasswordRequestModel {
    return $UpdateUserPasswordRequestModelCopyWith<$Res>(
        _value.updateUserPasswordRequestModel, (value) {
      return _then(_value.copyWith(updateUserPasswordRequestModel: value));
    });
  }
}

/// @nodoc

class _$UpdateUserPasswordImpl implements _UpdateUserPassword {
  const _$UpdateUserPasswordImpl(
      {required this.updateUserPasswordRequestModel});

  @override
  final UpdateUserPasswordRequestModel updateUserPasswordRequestModel;

  @override
  String toString() {
    return 'UserAccountEvent.updateUserPassword(updateUserPasswordRequestModel: $updateUserPasswordRequestModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserPasswordImpl &&
            (identical(other.updateUserPasswordRequestModel,
                    updateUserPasswordRequestModel) ||
                other.updateUserPasswordRequestModel ==
                    updateUserPasswordRequestModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updateUserPasswordRequestModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserPasswordImplCopyWith<_$UpdateUserPasswordImpl> get copyWith =>
      __$$UpdateUserPasswordImplCopyWithImpl<_$UpdateUserPasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserAccount,
    required TResult Function(
            UpdateUserAccountRequestModel updateUserAccountRequestModel)
        updateUserAccount,
    required TResult Function(
            UpdateUserPasswordRequestModel updateUserPasswordRequestModel)
        updateUserPassword,
  }) {
    return updateUserPassword(updateUserPasswordRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserAccount,
    TResult? Function(
            UpdateUserAccountRequestModel updateUserAccountRequestModel)?
        updateUserAccount,
    TResult? Function(
            UpdateUserPasswordRequestModel updateUserPasswordRequestModel)?
        updateUserPassword,
  }) {
    return updateUserPassword?.call(updateUserPasswordRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserAccount,
    TResult Function(
            UpdateUserAccountRequestModel updateUserAccountRequestModel)?
        updateUserAccount,
    TResult Function(
            UpdateUserPasswordRequestModel updateUserPasswordRequestModel)?
        updateUserPassword,
    required TResult orElse(),
  }) {
    if (updateUserPassword != null) {
      return updateUserPassword(updateUserPasswordRequestModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserAccount value) getUserAccount,
    required TResult Function(_UpdateUserAccount value) updateUserAccount,
    required TResult Function(_UpdateUserPassword value) updateUserPassword,
  }) {
    return updateUserPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserAccount value)? getUserAccount,
    TResult? Function(_UpdateUserAccount value)? updateUserAccount,
    TResult? Function(_UpdateUserPassword value)? updateUserPassword,
  }) {
    return updateUserPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserAccount value)? getUserAccount,
    TResult Function(_UpdateUserAccount value)? updateUserAccount,
    TResult Function(_UpdateUserPassword value)? updateUserPassword,
    required TResult orElse(),
  }) {
    if (updateUserPassword != null) {
      return updateUserPassword(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserPassword implements UserAccountEvent {
  const factory _UpdateUserPassword(
      {required final UpdateUserPasswordRequestModel
          updateUserPasswordRequestModel}) = _$UpdateUserPasswordImpl;

  UpdateUserPasswordRequestModel get updateUserPasswordRequestModel;
  @JsonKey(ignore: true)
  _$$UpdateUserPasswordImplCopyWith<_$UpdateUserPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserAccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonState commonState) commonState,
    required TResult Function(
            ApiResponseWrapper<UserAccountResponseModel>
                userAccountResponseModel)
        userAccountLoaded,
    required TResult Function(
            UpdateUserPasswordResponseModel updateUserPasswordResponseModel)
        userPasswordUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonState commonState)? commonState,
    TResult? Function(
            ApiResponseWrapper<UserAccountResponseModel>
                userAccountResponseModel)?
        userAccountLoaded,
    TResult? Function(
            UpdateUserPasswordResponseModel updateUserPasswordResponseModel)?
        userPasswordUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonState commonState)? commonState,
    TResult Function(
            ApiResponseWrapper<UserAccountResponseModel>
                userAccountResponseModel)?
        userAccountLoaded,
    TResult Function(
            UpdateUserPasswordResponseModel updateUserPasswordResponseModel)?
        userPasswordUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommonState value) commonState,
    required TResult Function(_UserAccountLoaded value) userAccountLoaded,
    required TResult Function(_UserPasswordUpdated value) userPasswordUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommonState value)? commonState,
    TResult? Function(_UserAccountLoaded value)? userAccountLoaded,
    TResult? Function(_UserPasswordUpdated value)? userPasswordUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommonState value)? commonState,
    TResult Function(_UserAccountLoaded value)? userAccountLoaded,
    TResult Function(_UserPasswordUpdated value)? userPasswordUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAccountStateCopyWith<$Res> {
  factory $UserAccountStateCopyWith(
          UserAccountState value, $Res Function(UserAccountState) then) =
      _$UserAccountStateCopyWithImpl<$Res, UserAccountState>;
}

/// @nodoc
class _$UserAccountStateCopyWithImpl<$Res, $Val extends UserAccountState>
    implements $UserAccountStateCopyWith<$Res> {
  _$UserAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CommonStateImplCopyWith<$Res> {
  factory _$$CommonStateImplCopyWith(
          _$CommonStateImpl value, $Res Function(_$CommonStateImpl) then) =
      __$$CommonStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CommonState commonState});

  $CommonStateCopyWith<$Res> get commonState;
}

/// @nodoc
class __$$CommonStateImplCopyWithImpl<$Res>
    extends _$UserAccountStateCopyWithImpl<$Res, _$CommonStateImpl>
    implements _$$CommonStateImplCopyWith<$Res> {
  __$$CommonStateImplCopyWithImpl(
      _$CommonStateImpl _value, $Res Function(_$CommonStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commonState = null,
  }) {
    return _then(_$CommonStateImpl(
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

class _$CommonStateImpl implements _CommonState {
  const _$CommonStateImpl({required this.commonState});

  @override
  final CommonState commonState;

  @override
  String toString() {
    return 'UserAccountState.commonState(commonState: $commonState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommonStateImpl &&
            (identical(other.commonState, commonState) ||
                other.commonState == commonState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commonState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommonStateImplCopyWith<_$CommonStateImpl> get copyWith =>
      __$$CommonStateImplCopyWithImpl<_$CommonStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonState commonState) commonState,
    required TResult Function(
            ApiResponseWrapper<UserAccountResponseModel>
                userAccountResponseModel)
        userAccountLoaded,
    required TResult Function(
            UpdateUserPasswordResponseModel updateUserPasswordResponseModel)
        userPasswordUpdated,
  }) {
    return commonState(this.commonState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonState commonState)? commonState,
    TResult? Function(
            ApiResponseWrapper<UserAccountResponseModel>
                userAccountResponseModel)?
        userAccountLoaded,
    TResult? Function(
            UpdateUserPasswordResponseModel updateUserPasswordResponseModel)?
        userPasswordUpdated,
  }) {
    return commonState?.call(this.commonState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonState commonState)? commonState,
    TResult Function(
            ApiResponseWrapper<UserAccountResponseModel>
                userAccountResponseModel)?
        userAccountLoaded,
    TResult Function(
            UpdateUserPasswordResponseModel updateUserPasswordResponseModel)?
        userPasswordUpdated,
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
    required TResult Function(_CommonState value) commonState,
    required TResult Function(_UserAccountLoaded value) userAccountLoaded,
    required TResult Function(_UserPasswordUpdated value) userPasswordUpdated,
  }) {
    return commonState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommonState value)? commonState,
    TResult? Function(_UserAccountLoaded value)? userAccountLoaded,
    TResult? Function(_UserPasswordUpdated value)? userPasswordUpdated,
  }) {
    return commonState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommonState value)? commonState,
    TResult Function(_UserAccountLoaded value)? userAccountLoaded,
    TResult Function(_UserPasswordUpdated value)? userPasswordUpdated,
    required TResult orElse(),
  }) {
    if (commonState != null) {
      return commonState(this);
    }
    return orElse();
  }
}

abstract class _CommonState implements UserAccountState {
  const factory _CommonState({required final CommonState commonState}) =
      _$CommonStateImpl;

  CommonState get commonState;
  @JsonKey(ignore: true)
  _$$CommonStateImplCopyWith<_$CommonStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserAccountLoadedImplCopyWith<$Res> {
  factory _$$UserAccountLoadedImplCopyWith(_$UserAccountLoadedImpl value,
          $Res Function(_$UserAccountLoadedImpl) then) =
      __$$UserAccountLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {ApiResponseWrapper<UserAccountResponseModel> userAccountResponseModel});
}

/// @nodoc
class __$$UserAccountLoadedImplCopyWithImpl<$Res>
    extends _$UserAccountStateCopyWithImpl<$Res, _$UserAccountLoadedImpl>
    implements _$$UserAccountLoadedImplCopyWith<$Res> {
  __$$UserAccountLoadedImplCopyWithImpl(_$UserAccountLoadedImpl _value,
      $Res Function(_$UserAccountLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userAccountResponseModel = null,
  }) {
    return _then(_$UserAccountLoadedImpl(
      userAccountResponseModel: null == userAccountResponseModel
          ? _value.userAccountResponseModel
          : userAccountResponseModel // ignore: cast_nullable_to_non_nullable
              as ApiResponseWrapper<UserAccountResponseModel>,
    ));
  }
}

/// @nodoc

class _$UserAccountLoadedImpl implements _UserAccountLoaded {
  const _$UserAccountLoadedImpl({required this.userAccountResponseModel});

  @override
  final ApiResponseWrapper<UserAccountResponseModel> userAccountResponseModel;

  @override
  String toString() {
    return 'UserAccountState.userAccountLoaded(userAccountResponseModel: $userAccountResponseModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAccountLoadedImpl &&
            (identical(
                    other.userAccountResponseModel, userAccountResponseModel) ||
                other.userAccountResponseModel == userAccountResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userAccountResponseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAccountLoadedImplCopyWith<_$UserAccountLoadedImpl> get copyWith =>
      __$$UserAccountLoadedImplCopyWithImpl<_$UserAccountLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonState commonState) commonState,
    required TResult Function(
            ApiResponseWrapper<UserAccountResponseModel>
                userAccountResponseModel)
        userAccountLoaded,
    required TResult Function(
            UpdateUserPasswordResponseModel updateUserPasswordResponseModel)
        userPasswordUpdated,
  }) {
    return userAccountLoaded(userAccountResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonState commonState)? commonState,
    TResult? Function(
            ApiResponseWrapper<UserAccountResponseModel>
                userAccountResponseModel)?
        userAccountLoaded,
    TResult? Function(
            UpdateUserPasswordResponseModel updateUserPasswordResponseModel)?
        userPasswordUpdated,
  }) {
    return userAccountLoaded?.call(userAccountResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonState commonState)? commonState,
    TResult Function(
            ApiResponseWrapper<UserAccountResponseModel>
                userAccountResponseModel)?
        userAccountLoaded,
    TResult Function(
            UpdateUserPasswordResponseModel updateUserPasswordResponseModel)?
        userPasswordUpdated,
    required TResult orElse(),
  }) {
    if (userAccountLoaded != null) {
      return userAccountLoaded(userAccountResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommonState value) commonState,
    required TResult Function(_UserAccountLoaded value) userAccountLoaded,
    required TResult Function(_UserPasswordUpdated value) userPasswordUpdated,
  }) {
    return userAccountLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommonState value)? commonState,
    TResult? Function(_UserAccountLoaded value)? userAccountLoaded,
    TResult? Function(_UserPasswordUpdated value)? userPasswordUpdated,
  }) {
    return userAccountLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommonState value)? commonState,
    TResult Function(_UserAccountLoaded value)? userAccountLoaded,
    TResult Function(_UserPasswordUpdated value)? userPasswordUpdated,
    required TResult orElse(),
  }) {
    if (userAccountLoaded != null) {
      return userAccountLoaded(this);
    }
    return orElse();
  }
}

abstract class _UserAccountLoaded implements UserAccountState {
  const factory _UserAccountLoaded(
      {required final ApiResponseWrapper<UserAccountResponseModel>
          userAccountResponseModel}) = _$UserAccountLoadedImpl;

  ApiResponseWrapper<UserAccountResponseModel> get userAccountResponseModel;
  @JsonKey(ignore: true)
  _$$UserAccountLoadedImplCopyWith<_$UserAccountLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserPasswordUpdatedImplCopyWith<$Res> {
  factory _$$UserPasswordUpdatedImplCopyWith(_$UserPasswordUpdatedImpl value,
          $Res Function(_$UserPasswordUpdatedImpl) then) =
      __$$UserPasswordUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateUserPasswordResponseModel updateUserPasswordResponseModel});

  $UpdateUserPasswordResponseModelCopyWith<$Res>
      get updateUserPasswordResponseModel;
}

/// @nodoc
class __$$UserPasswordUpdatedImplCopyWithImpl<$Res>
    extends _$UserAccountStateCopyWithImpl<$Res, _$UserPasswordUpdatedImpl>
    implements _$$UserPasswordUpdatedImplCopyWith<$Res> {
  __$$UserPasswordUpdatedImplCopyWithImpl(_$UserPasswordUpdatedImpl _value,
      $Res Function(_$UserPasswordUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateUserPasswordResponseModel = null,
  }) {
    return _then(_$UserPasswordUpdatedImpl(
      updateUserPasswordResponseModel: null == updateUserPasswordResponseModel
          ? _value.updateUserPasswordResponseModel
          : updateUserPasswordResponseModel // ignore: cast_nullable_to_non_nullable
              as UpdateUserPasswordResponseModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdateUserPasswordResponseModelCopyWith<$Res>
      get updateUserPasswordResponseModel {
    return $UpdateUserPasswordResponseModelCopyWith<$Res>(
        _value.updateUserPasswordResponseModel, (value) {
      return _then(_value.copyWith(updateUserPasswordResponseModel: value));
    });
  }
}

/// @nodoc

class _$UserPasswordUpdatedImpl implements _UserPasswordUpdated {
  const _$UserPasswordUpdatedImpl(
      {required this.updateUserPasswordResponseModel});

  @override
  final UpdateUserPasswordResponseModel updateUserPasswordResponseModel;

  @override
  String toString() {
    return 'UserAccountState.userPasswordUpdated(updateUserPasswordResponseModel: $updateUserPasswordResponseModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPasswordUpdatedImpl &&
            (identical(other.updateUserPasswordResponseModel,
                    updateUserPasswordResponseModel) ||
                other.updateUserPasswordResponseModel ==
                    updateUserPasswordResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updateUserPasswordResponseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPasswordUpdatedImplCopyWith<_$UserPasswordUpdatedImpl> get copyWith =>
      __$$UserPasswordUpdatedImplCopyWithImpl<_$UserPasswordUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonState commonState) commonState,
    required TResult Function(
            ApiResponseWrapper<UserAccountResponseModel>
                userAccountResponseModel)
        userAccountLoaded,
    required TResult Function(
            UpdateUserPasswordResponseModel updateUserPasswordResponseModel)
        userPasswordUpdated,
  }) {
    return userPasswordUpdated(updateUserPasswordResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonState commonState)? commonState,
    TResult? Function(
            ApiResponseWrapper<UserAccountResponseModel>
                userAccountResponseModel)?
        userAccountLoaded,
    TResult? Function(
            UpdateUserPasswordResponseModel updateUserPasswordResponseModel)?
        userPasswordUpdated,
  }) {
    return userPasswordUpdated?.call(updateUserPasswordResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonState commonState)? commonState,
    TResult Function(
            ApiResponseWrapper<UserAccountResponseModel>
                userAccountResponseModel)?
        userAccountLoaded,
    TResult Function(
            UpdateUserPasswordResponseModel updateUserPasswordResponseModel)?
        userPasswordUpdated,
    required TResult orElse(),
  }) {
    if (userPasswordUpdated != null) {
      return userPasswordUpdated(updateUserPasswordResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommonState value) commonState,
    required TResult Function(_UserAccountLoaded value) userAccountLoaded,
    required TResult Function(_UserPasswordUpdated value) userPasswordUpdated,
  }) {
    return userPasswordUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommonState value)? commonState,
    TResult? Function(_UserAccountLoaded value)? userAccountLoaded,
    TResult? Function(_UserPasswordUpdated value)? userPasswordUpdated,
  }) {
    return userPasswordUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommonState value)? commonState,
    TResult Function(_UserAccountLoaded value)? userAccountLoaded,
    TResult Function(_UserPasswordUpdated value)? userPasswordUpdated,
    required TResult orElse(),
  }) {
    if (userPasswordUpdated != null) {
      return userPasswordUpdated(this);
    }
    return orElse();
  }
}

abstract class _UserPasswordUpdated implements UserAccountState {
  const factory _UserPasswordUpdated(
      {required final UpdateUserPasswordResponseModel
          updateUserPasswordResponseModel}) = _$UserPasswordUpdatedImpl;

  UpdateUserPasswordResponseModel get updateUserPasswordResponseModel;
  @JsonKey(ignore: true)
  _$$UserPasswordUpdatedImplCopyWith<_$UserPasswordUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
