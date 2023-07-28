import 'package:cerati/features/login/model/login_response_model.dart';
import 'package:test/test.dart';

import '../../../helpers/json.dart';
import '../../../helpers/models.dart';

void main() {
  group('LoginResponseModel', () {
    test('should correctly parse from json', () {
      final result = LoginResponseModel.fromJson(loginJsonResponse);

      expect(result.status, 'success');
      expect(result.token, 'userToken');
      expect(result.userModel.id, 2);
      expect(result.userModel.firstName, 'John');
      expect(result.userModel.lastName, 'Doe');
      expect(result.userModel.fullName, 'John Doe');
      expect(result.userModel.email, 'john.doe@example.com');
      expect(result.userModel.createdAt, DateTime.parse('2023-01-01T00:00:00.000'));
      expect(result.userModel.updatedAt, DateTime.parse('2023-01-01T00:00:00.000'));
    });

    test('should correctly convert to json', () {
      final result = loginResponseModelTest.toJson();

      expect(result, loginJsonResponse);
    });
  });
}
