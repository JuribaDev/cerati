import 'package:cerati/features/user_account/model/user_account_response_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/helpers.dart';

void main() {
  group('UserAccountResponseModel', () {
    test('should correctly parse from json', () {
      final userAccount = UserAccountResponseModel.fromJson(userAccountResponseJsonTest);
      expect(userAccount.id, 1);
      expect(userAccount.firstName, 'Juriba');
      expect(userAccount.lastName, 'Alsiari');
      expect(userAccount.fullName, 'Juriba Alsiari');
      expect(userAccount.email, 'juriba@example.com');
      expect(userAccount.createdAt, DateTime.parse('2023-01-01T00:00:00.000'));
      expect(userAccount.updatedAt, DateTime.parse('2023-01-01T00:00:00.000'));
    });

    test('should correctly convert to json', () {
      final userAccountJson = userAccountResponseModelTest.toJson();
      expect(userAccountJson, userAccountResponseJsonTest);
    });
  });
}
