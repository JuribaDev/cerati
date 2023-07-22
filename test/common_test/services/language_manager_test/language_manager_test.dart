import 'package:cerati/common/constants/storage_constants.dart';
import 'package:cerati/common/services/datasource/local_storage/local_storage.dart';
import 'package:cerati/common/services/language_manager/language_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockLocalStorage extends Mock implements LocalStorage {}

void main() {
  group('LanguageManager', () {
    late LocalStorage localStorage;
    late UserSettingManager languageManager;

    setUp(() {
      localStorage = MockLocalStorage();
      languageManager = UserSettingManager(localStorage);
    });

    test('changeLanguage writes locale.languageCode to storage', () async {
      // Arrange
      const locale = Locale('en');
      when(() => localStorage.write<String>(key: any(named: 'key'), data: any(named: 'data')))
          .thenAnswer((_) async => true);

      // Act
      await languageManager.setLocale(locale: locale);

      // Assert
      verify(() => localStorage.write<String>(key: StorageConstants.languageKey, data: locale.languageCode)).called(1);
    });

    test('getLocal returns correct locale from storage', () async {
      // Arrange
      const storedLocaleCode = 'en';
      when(() => localStorage.hasData(key: any(named: 'key'))).thenReturn(true);
      when(() => localStorage.read<String>(key: any(named: 'key'))).thenAnswer((_) async => storedLocaleCode);

      // Act
      final locale = await languageManager.getLocal();

      // Assert
      expect(locale, isNotNull);
      expect(locale.languageCode, equals(storedLocaleCode));

      verify(() => localStorage.hasData(key: StorageConstants.languageKey)).called(1);
      verify(() => localStorage.read<String>(key: StorageConstants.languageKey)).called(1);
    });
  });
}
