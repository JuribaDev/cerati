import 'package:cerati/common/blocs/generic_state/generic_state.dart';
import 'package:cerati/features/user_account/bloc/user_account_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/helpers.dart';

void main() {
  group('UserAccountState', () {
    test('Initial state is created correctly', () {
      const state = UserAccountState.commonState(commonState: CommonState.initial());
      expect(state, isA<UserAccountState>());
      expect(state, isInstanceOf<UserAccountState>());
    });

    test('Loading state is created correctly', () {
      const state = UserAccountState.commonState(commonState: CommonState.loading());
      expect(state, isA<UserAccountState>());
      expect(state, isInstanceOf<UserAccountState>());
    });

    test('Error state is created correctly', () {
      const errorMessage = 'Some error';
      const state = UserAccountState.commonState(commonState: CommonState.error(errorMessage: errorMessage));
      expect(state, isA<UserAccountState>());
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

    test('UserAccountLoaded state is created correctly', () {
      final state = UserAccountState.userAccountLoaded(userAccountResponseModel: apiResponseWrapperModelTest);
      expect(state, isA<UserAccountState>());
      state.maybeMap(
        userAccountLoaded: (userAccountResponse) =>
            expect(userAccountResponse.userAccountResponseModel, apiResponseWrapperModelTest),
        orElse: () => fail('Expected UserAccountLoaded state'),
      );
    });

    test('UserPasswordLoaded state is created correctly', () {
      const state =
          UserAccountState.userPasswordUpdated(updateUserPasswordResponseModel: updateUserPasswordResponseModelTest);
      expect(state, isA<UserAccountState>());
      state.maybeMap(
        userPasswordUpdated: (userPasswordResponse) =>
            expect(userPasswordResponse.updateUserPasswordResponseModel, updateUserPasswordResponseModelTest),
        orElse: () => fail('Expected UserPasswordUpdated state'),
      );
    });
  });
}
