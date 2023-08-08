import 'package:cerati/features/user_account/model/update_user_password_response_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/helpers.dart';

void main() {
  group('UpdateUserPasswordResponseTest', () {
    test('should correctly parse from json', () {
      final updatePasswordRequest = UpdateUserPasswordResponseModel.fromJson(updateUserPasswordJsonResponseTest);
      expect(updatePasswordRequest.message, 'Password updated successfully');
    });

    test('should correctly convert to json', () {
      final updatePasswordJson = updatePasswordResponseModelTest.toJson();
      expect(updatePasswordJson, updateUserPasswordJsonResponseTest);
    });
  });
}
