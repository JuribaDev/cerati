import 'package:cerati/features/user_account/model/update_user_account_request_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/helpers.dart';

void main() {
  group('UpdateUserAccountResponseModel', () {
    test('should correctly parse from json', () {
      final updatedUserAccount = UpdateUserAccountRequestModel.fromJson(updateUserAccountJsonResponseTest);
      expect(updatedUserAccount.id, 1);
      expect(updatedUserAccount.firstName, 'Juriba');
      expect(updatedUserAccount.lastName, 'Alsiari');
      expect(updatedUserAccount.email, 'juriba@example.com');
    });

    test('should correctly convert to json', () {
      final updatedUserAccountJson = updateUserAccountResponseModelTest.toJson();
      expect(updatedUserAccountJson, updateUserAccountJsonResponseTest);
    });
  });
}
