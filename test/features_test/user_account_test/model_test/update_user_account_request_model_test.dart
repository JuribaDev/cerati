import 'package:cerati/features/user_account/model/update_user_account_request_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/helpers.dart';

void main() {
  group('UpdateUserAccountResponseModel', () {
    test('should correctly parse from json', () {
      final updatedUserAccount = UpdateUserAccountRequestModel.fromJson(updateUserAccountRequestJsonTest);
      expect(updatedUserAccount, updateUserAccountRequestModelTest);
    });

    test('should correctly convert to json', () {
      final updatedUserAccountJson = updateUserAccountRequestModelTest.toJson();
      expect(updatedUserAccountJson, updateUserAccountRequestJsonTest);
    });
  });
}
