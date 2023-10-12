import 'package:cerati/features/login/model/login_response_model.dart';
import 'package:test/test.dart';

import '../../../helpers/json.dart';
import '../../../helpers/models.dart';

void main() {
  group('LoginResponseModel', () {
    test('should correctly parse from json', () {
      final result = LoginResponseModel.fromJson(loginResponseJsonTest);

      expect(result.status, loginResponseJsonTest['status']);
      expect(result.token, loginResponseJsonTest['token']);
      expect(result.userAccountResponseModel.id, userAccountResponseJsonTest['id']);
      expect(result.userAccountResponseModel.firstName, userAccountResponseJsonTest['first_name']);
      expect(result.userAccountResponseModel.lastName, userAccountResponseJsonTest['last_name']);
      expect(result.userAccountResponseModel.fullName, userAccountResponseJsonTest['full_name']);
      expect(result.userAccountResponseModel.email, userAccountResponseJsonTest['email']);
      expect(result.userAccountResponseModel.createdAt, DateTime.parse('2023-01-01T00:00:00.000'));
      expect(result.userAccountResponseModel.updatedAt, DateTime.parse('2023-01-01T00:00:00.000'));
    });

    test('should correctly convert to json', () {
      final result = loginResponseModelTest.toJson();

      expect(result, loginResponseJsonTest);
    });
  });
}
