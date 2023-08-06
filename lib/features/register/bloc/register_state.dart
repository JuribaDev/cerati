part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = _Initial;

  const factory RegisterState.success({required LoginResponseModel registerResponseModel}) = _Success;

  const factory RegisterState.loading() = _Loading;

  const factory RegisterState.error({required String errorMessage}) = _Error;
}
