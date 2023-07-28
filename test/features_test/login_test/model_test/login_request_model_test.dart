import 'package:cerati/features/login/model/login_request_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/json.dart';
import '../../../helpers/models.dart';

void main() {
  group('LoginRequestModel', () {
    test('should correctly parse from json', () {
      final result = LoginRequestModel.fromJson(loginJsonRequest);

      expect(result.email, 'juriba1@gmail.comd');
      expect(result.password, 'Admin1211');
    });

    test('should correctly convert to json', () {
      final result = loginRequestModelTest.toJson();

      expect(result, loginJsonRequest);
    });
  });
}
