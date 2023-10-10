import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cerati/common/blocs/generic_state/generic_state.dart';
import 'package:cerati/common/model/api_response_wrapper.dart';
import 'package:cerati/features/user_account/model/update_user_account_request_model.dart';
import 'package:cerati/features/user_account/model/update_user_password_request_model.dart';
import 'package:cerati/features/user_account/model/update_user_password_response_model.dart';
import 'package:cerati/features/user_account/model/user_account_response_model.dart';
import 'package:cerati/features/user_account/repository/user_account_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_account_event.dart';

part 'user_account_state.dart';

part 'user_account_bloc.freezed.dart';

class UserAccountBloc extends Bloc<UserAccountEvent, UserAccountState> {
  UserAccountBloc(this._userAccountRepository)
      : super(const UserAccountState.commonState(commonState: CommonState.initial())) {
    on<UserAccountEvent>(_onUserAccountEventStarted);
  }

  final UserAccountRepository _userAccountRepository;

  Future<void> _onUserAccountEventStarted(UserAccountEvent event, Emitter<UserAccountState> emit) async {
    emit(const UserAccountState.commonState(commonState: CommonState.loading()));
    await event.when(
      getUserAccount: () async => _handleGetUserAccount(emit),
      updateUserAccount: (updateUserAccountRequestModel) async =>
          _handleUpdateUserAccount(emit, updateUserAccountRequestModel),
      updateUserPassword: (updateUserPasswordRequestModel) async =>
          _handleUpdateUserPassword(emit, updateUserPasswordRequestModel),
    );
  }

  Future<void> _handleGetUserAccount(Emitter<UserAccountState> emit) async {
    final userAccountResponse = await _userAccountRepository.getUserAccount();
    userAccountResponse.fold(
      (failure) => emit(UserAccountState.commonState(commonState: CommonState.error(errorMessage: failure.message))),
      (userAccountResponseModel) =>
          emit(UserAccountState.userAccountLoaded(userAccountResponseModel: userAccountResponseModel)),
    );
  }

  Future<void> _handleUpdateUserAccount(
      Emitter<UserAccountState> emit, UpdateUserAccountRequestModel updateUserAccountRequestModel) async {
    {
      final userAccountResponse =
          await _userAccountRepository.updateUserAccount(updateUserAccountRequestModel: updateUserAccountRequestModel);
      userAccountResponse.fold(
        (failure) => emit(UserAccountState.commonState(commonState: CommonState.error(errorMessage: failure.message))),
        (userAccountResponseModel) =>
            emit(UserAccountState.userAccountLoaded(userAccountResponseModel: userAccountResponseModel)),
      );
    }
  }

  Future<void> _handleUpdateUserPassword(
      Emitter<UserAccountState> emit, UpdateUserPasswordRequestModel updateUserPasswordRequestModel) async {
    final userAccountResponse =
        await _userAccountRepository.updateUserPassword(updateUserPasswordRequestModel: updateUserPasswordRequestModel);
    userAccountResponse.fold(
      (failure) => emit(UserAccountState.commonState(commonState: CommonState.error(errorMessage: failure.message))),
      (userPasswordResponse) =>
          emit(UserAccountState.userPasswordUpdated(updateUserPasswordResponseModel: userPasswordResponse)),
    );
  }
}
