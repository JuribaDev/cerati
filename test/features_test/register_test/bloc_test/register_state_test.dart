import 'package:cerati/common/blocs/generic_state/generic_state.dart';
import 'package:cerati/features/register/bloc/register_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/helpers.dart';

void main() {
  group('RegisterState', () {
    test('Initial state is created correctly', () {
      const state = RegisterState.commonState(commonState: CommonState.initial());
      expect(state, isA<RegisterState>());
      expect(state, isInstanceOf<RegisterState>());
    });

    test('Loading state is created correctly', () {
      const state = RegisterState.commonState(commonState: CommonState.loading());
      expect(state, isA<RegisterState>());
      expect(state, isInstanceOf<RegisterState>());
    });

    test('Error state is created correctly', () {
      const errorMessage = 'Some error';
      const state = RegisterState.commonState(commonState: CommonState.error(errorMessage: errorMessage));
      expect(state, isA<RegisterState>());
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

    test('RegisterSuccess state is created correctly', () {
      final state = RegisterState.registerSuccess(registerResponseModel: loginResponseModelTest);
      expect(state, isA<RegisterState>());
      state.maybeMap(
        registerSuccess: (loginResponse) => expect(loginResponse.registerResponseModel, loginResponseModelTest),
        orElse: () => fail('Expected Error state'),
      );
    });
  });
}
