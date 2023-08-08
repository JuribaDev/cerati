import 'package:cerati/features/user_account/model/update_user_password_request_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/helpers.dart';

void main() {
  group('UpdateUserPasswordRequestTest', () {
    test('should correctly parse from json', () {
      final updatePasswordRequest = UpdateUserPasswordRequestModel.fromJson(updateUserPasswordJsonRequestTest);
      expect(updatePasswordRequest.currentPassword, 'Admin@123');
      expect(updatePasswordRequest.newPassword, 'Admin@12345');
    });

    test('should correctly convert to json', () {
      final updatePasswordJson = updatePasswordRequestModelTest.toJson();
      expect(updatePasswordJson, updateUserPasswordJsonRequestTest);
    });
  });
}
