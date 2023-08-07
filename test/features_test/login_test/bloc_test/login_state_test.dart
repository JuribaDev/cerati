import 'package:cerati/features/login/bloc/login_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/helpers.dart';

void main() {
  group('LoginState', () {
    test('Initial state is created correctly', () {
      const state = LoginState.initial();
      expect(state, isA<LoginState>());
      expect(state, isInstanceOf<LoginState>());
    });

    test('Loading state is created correctly', () {
      const state = LoginState.loading();
      expect(state, isA<LoginState>());
      expect(state, isInstanceOf<LoginState>());
    });

    test('Error state is created correctly', () {
      const errorMessage = 'Some error';
      const state = LoginState.error(errorMessage: errorMessage);
      expect(state, isA<LoginState>());
      state.maybeMap(
        error: (errorState) => expect(errorState.errorMessage, equals(errorMessage)),
        orElse: () => fail('Expected Error state'),
      );
    });

    test('Success state is created correctly', () {
      final state = LoginState.success(loginResponseModel: loginResponseModelTest);
      expect(state, isA<LoginState>());
      state.maybeMap(
        success: (loginResponse) => expect(loginResponse.loginResponseModel, loginResponseModelTest),
        orElse: () => fail('Expected Error state'),
      );
    });
  });
}
