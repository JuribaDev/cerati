part of 'user_account_bloc.dart';

@freezed
class UserAccountState with _$UserAccountState {
  const factory UserAccountState.commonState({required CommonState commonState}) = _CommonState;

  const factory UserAccountState.userAccountLoaded({required UserAccountResponseModel userAccountResponseModel}) =
      _UserAccountLoaded;

  const factory UserAccountState.userPasswordUpdated(
      {required UpdateUserPasswordResponseModel updateUserPasswordResponseModel}) = _UserPasswordUpdated;
}
