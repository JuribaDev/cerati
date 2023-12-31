import 'package:bloc/bloc.dart';
import 'package:cerati/common/blocs/generic_state/generic_state.dart';
import 'package:cerati/features/login/model/login_request_model.dart';
import 'package:cerati/features/login/model/login_response_model.dart';
import 'package:cerati/features/login/repository/login_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';

part 'login_state.dart';

part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._loginRepository) : super(const LoginState.commonState(commonState: CommonState.initial())) {
    on<LoginEvent>(_onLoginEvent);
  }

  final LoginRepository _loginRepository;

  Future<void> _onLoginEvent(LoginEvent event, Emitter<LoginState> emit) async {
    emit(const LoginState.commonState(commonState: CommonState.loading()));
    final loginResponse = await _loginRepository.login(loginRequestModel: event.loginRequestModel);
    loginResponse.fold(
      (failure) => emit(LoginState.commonState(commonState: CommonState.error(errorMessage: failure.message))),
      (loginResponseModel) => emit(LoginState.loginSuccess(loginResponseModel: loginResponseModel)),
    );
  }
}
