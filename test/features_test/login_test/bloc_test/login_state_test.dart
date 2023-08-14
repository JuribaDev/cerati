import 'package:cerati/common/blocs/generic_state/generic_state.dart';
import 'package:cerati/features/login/bloc/login_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/helpers.dart';

void main() {
  group('LoginState', () {
    test('Initial state is created correctly', () {
      const state = LoginState.commonState(commonState: CommonState.initial());
      expect(state, isA<LoginState>());
      expect(state, isInstanceOf<LoginState>());
    });

    test('Loading state is created correctly', () {
      const state = LoginState.commonState(commonState: CommonState.loading());
      expect(state, isA<LoginState>());
      expect(state, isInstanceOf<LoginState>());
    });

    test('Error state is created correctly', () {
      const errorMessage = 'Some error';
      const state = LoginState.commonState(commonState: CommonState.error(errorMessage: errorMessage));
      expect(state, isA<LoginState>());
      state.maybeMap(
        commonState: (errorState) => expect(
            errorState.commonState.maybeWhen(
              error: (errorMessage) => errorMessage,
              orElse: () => fail('Expected Error state'),
            ),
            equals(errorMessage)),
        orElse: () => fail('Expected Error state'),
      );
    });

    test('LoginSuccess state is created correctly', () {
      final state = LoginState.loginSuccess(loginResponseModel: loginResponseModelTest);
      expect(state, isA<LoginState>());
      state.maybeMap(
        loginSuccess: (loginResponse) => expect(loginResponse.loginResponseModel, loginResponseModelTest),
        orElse: () => fail('Expected Error state'),
      );
    });
  });
}
