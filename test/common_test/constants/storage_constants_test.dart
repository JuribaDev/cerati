import 'package:cerati/common/constants/storage_constants.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('StorageConstants', () {
    test('verify keys', () {
      expect(StorageConstants.uidKey, equals('uid'));
      expect(StorageConstants.accessTokenKey, equals('accessToken'));
      expect(StorageConstants.refreshTokenKey, equals('refreshToken'));
      expect(StorageConstants.passCodeKey, equals('passCodeKey'));
      expect(StorageConstants.biometricRequest, equals('biometricRequest'));
      expect(StorageConstants.biometricType, equals('biometricType'));
      expect(StorageConstants.languageKey, equals('languageKey'));
      expect(StorageConstants.appVersion, equals('appVersionKey'));
      expect(StorageConstants.appBuildNumber, equals('appBuildNumberKey'));
    });
  });
}
