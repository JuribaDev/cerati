import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cerati/common/blocs/generic_state/generic_state.dart';
import 'package:cerati/features/login/model/login_response_model.dart';
import 'package:cerati/features/register/model/register_request_model.dart';
import 'package:cerati/features/register/repository/register_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_event.dart';

part 'register_state.dart';

part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc(this._registerRepository) : super(const RegisterState.commonState(commonState: CommonState.initial())) {
    on<RegisterEvent>(_onRegisterEvent);
  }

  final RegisterRepository _registerRepository;

  Future<void> _onRegisterEvent(RegisterEvent event, Emitter<RegisterState> emit) async {
    emit(const RegisterState.commonState(commonState: CommonState.loading()));
    final registerResponse = await _registerRepository.register(registerRequestModel: event.registerRequestModel);
    registerResponse.fold(
      (failure) => emit(RegisterState.commonState(commonState: CommonState.error(errorMessage: failure.message))),
      (registerResponseModel) => emit(RegisterState.registerSuccess(registerResponseModel: registerResponseModel)),
    );
  }
}
