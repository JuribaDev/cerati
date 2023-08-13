import 'package:cerati/features/register/bloc/register_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/helpers.dart';

void main() {
  group('RegisterState', () {
    test('Initial state is created correctly', () {
      const state = RegisterState.initial();
      expect(state, isA<RegisterState>());
      expect(state, isInstanceOf<RegisterState>());
    });

    test('Loading state is created correctly', () {
      const state = RegisterState.loading();
      expect(state, isA<RegisterState>());
      expect(state, isInstanceOf<RegisterState>());
    });

    test('Error state is created correctly', () {
      const errorMessage = 'Some error';
      const state = RegisterState.error(errorMessage: errorMessage);
      expect(state, isA<RegisterState>());
      state.maybeMap(
        error: (errorState) => expect(errorState.errorMessage, equals(errorMessage)),
        orElse: () => fail('Expected Error state'),
      );
    });

    test('Success state is created correctly', () {
      final state = RegisterState.success(registerResponseModel: loginResponseModelTest);
      expect(state, isA<RegisterState>());
      state.maybeMap(
        success: (loginResponse) => expect(loginResponse.registerResponseModel, loginResponseModelTest),
        orElse: () => fail('Expected Error state'),
      );
    });
  });
}
