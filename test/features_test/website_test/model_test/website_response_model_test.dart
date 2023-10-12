import 'package:cerati/features/website/model/website_response_model.dart';
import 'package:test/test.dart';

import '../../../helpers/json.dart';
import '../../../helpers/models.dart';

void main() {
  group('WebsiteResponseModel', () {
    test('should correctly parse from json', () {
      final result = WebsiteResponseModel.fromJson(websiteResponseJsonTest);

      expect(result.id, websiteResponseJsonTest['id']);
      expect(result.languageId, websiteResponseJsonTest['language_id']);
      expect(result.languageCode, websiteResponseJsonTest['language_code']);
      expect(result.languageName, websiteResponseJsonTest['language_name']);
      expect(result.hasCertificate, websiteResponseJsonTest['has_certificate']);
      expect(result.hasEducation, websiteResponseJsonTest['has_education']);
      expect(result.hasProject, websiteResponseJsonTest['has_project']);
      expect(result.hasExperience, websiteResponseJsonTest['has_experience']);
      expect(result.hasSkill, websiteResponseJsonTest['has_skill']);
      expect(result.hasSMLink, websiteResponseJsonTest['has_s_m_link']);
      expect(result.createdAt, DateTime.parse('2023-09-26T15:30:42.000Z'));
      expect(result.updatedAt, DateTime.parse('2023-09-26T15:30:42.000Z'));
    });

    test('should correctly convert to json', () {
      final result = websiteResponseModelTest.toJson();

      expect(result, websiteResponseJsonTest);
    });
  });
}
