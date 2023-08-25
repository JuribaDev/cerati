part of 'user_account_bloc.dart';

@freezed
class UserAccountEvent with _$UserAccountEvent {
  const factory UserAccountEvent.getUserAccount() = _GetUserAccount;

  const factory UserAccountEvent.updateUserAccount(
      {required UpdateUserAccountRequestModel updateUserAccountRequestModel}) = _UpdateUserAccount;

  const factory UserAccountEvent.updateUserPassword(
      {required UpdateUserPasswordRequestModel updateUserPasswordRequestModel}) = _UpdateUserPassword;
}
