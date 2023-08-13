import 'package:cerati/features/login/model/login_response_model.dart';
import 'package:test/test.dart';

import '../../../helpers/json.dart';
import '../../../helpers/models.dart';

void main() {
  group('LoginResponseModel', () {
    test('should correctly parse from json', () {
      final result = LoginResponseModel.fromJson(loginResponseJsonTest);

      expect(result.status, 'success');
      expect(result.token, 'userToken');
      expect(result.userAccountResponseModel.id, 1);
      expect(result.userAccountResponseModel.firstName, 'Juriba');
      expect(result.userAccountResponseModel.lastName, 'Alsiari');
      expect(result.userAccountResponseModel.fullName, 'Juriba Alsiari');
      expect(result.userAccountResponseModel.email, 'juriba@example.com');
      expect(result.userAccountResponseModel.createdAt, DateTime.parse('2023-01-01T00:00:00.000'));
      expect(result.userAccountResponseModel.updatedAt, DateTime.parse('2023-01-01T00:00:00.000'));
    });

    test('should correctly convert to json', () {
      final result = loginResponseModelTest.toJson();

      expect(result, loginResponseJsonTest);
    });
  });
}
