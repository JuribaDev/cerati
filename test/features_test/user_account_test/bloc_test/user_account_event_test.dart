import 'package:cerati/features/user_account/bloc/user_account_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/helpers.dart';

void main() {
  group('UserAccountEvent', () {
    test('GetUserAccount event is created correctly', () {
      const userAccountEvent = UserAccountEvent.getUserAccount();
      expect(userAccountEvent, isA<UserAccountEvent>());
    });

    test('UpdateUserAccount event is created correctly', () {
      const updateUserAccountEvent =
          UserAccountEvent.updateUserAccount(updateUserAccountRequestModel: updateUserAccountRequestModelTest);
      expect(updateUserAccountEvent, isA<UserAccountEvent>());
      updateUserAccountEvent.maybeMap(
        updateUserAccount: (updateUserAccount) =>
            expect(updateUserAccount.updateUserAccountRequestModel, updateUserAccountRequestModelTest),
        orElse: () => fail('Expected UpdateUserAccount event'),
      );
    });

    test('UpdateUserPassword event is created correctly', () {
      const updateUserPasswordEvent =
          UserAccountEvent.updateUserPassword(updateUserPasswordRequestModel: updateUserPasswordRequestModelTest);
      expect(updateUserPasswordEvent, isA<UserAccountEvent>());
      updateUserPasswordEvent.maybeMap(
        updateUserPassword: (updateUserAccount) =>
            expect(updateUserAccount.updateUserPasswordRequestModel, updateUserPasswordRequestModelTest),
        orElse: () => fail('Expected UpdateUserPassword event'),
      );
    });
  });
}
