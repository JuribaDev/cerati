import 'package:cerati/features/website/model/website_request_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/json.dart';
import '../../../helpers/models.dart';

void main() {
  group('WebsiteRequestModel', () {
    test('should correctly parse from json', () {
      final result = WebsiteRequestModel.fromJson(websiteRequestJsonTest);

      expect(result.languageId, 1);
      expect(result.languageCode, 'en');
      expect(result.languageName, 'English');
    });

    test('should correctly convert to json', () {
      final result = websiteRequestModelTest.toJson();

      expect(result, websiteRequestJsonTest);
    });
  });
}
