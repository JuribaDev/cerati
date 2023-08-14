part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.commonState({required CommonState commonState}) = _GenericStatue;

  const factory LoginState.loginSuccess({required LoginResponseModel loginResponseModel}) = _Success;
}
