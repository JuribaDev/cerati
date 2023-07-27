import 'package:cerati/features/register/model/register_request_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/json.dart';
import '../../../helpers/models.dart';

void main() {
  group('RegisterRequestModel', () {
    test('should correctly parse from json', () {
      final result = RegisterRequestModel.fromJson(registerJsonRequest);

      expect(result.firstName, 'Juriba');
      expect(result.lastName, 'Saleh');
      expect(result.email, 'juriba@example.com');
      expect(result.password, 'admin@1211');
    });

    test('should correctly convert to json', () {
      final result = registerRequestModel.toJson();

      expect(result, registerJsonRequest);
    });
  });
}
