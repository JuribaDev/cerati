part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.commonState({required CommonState commonState}) = _Success;

  const factory RegisterState.registerSuccess({required LoginResponseModel registerResponseModel}) = _RegisterSuccess;
}
