import 'package:cerati/common/constants/storage_constants.dart';
import 'package:cerati/common/services/datasource/local_storage/local_storage.dart';
import 'package:cerati/common/services/user_setting_manager/user_setting_manager.dart';
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

    test('setLocale writes locale.languageCode to storage', () async {
      // Arrange
      const locale = Locale('en');
      when(
        () => localStorage.write<String>(
          key: any(named: 'key'),
          data: any(named: 'data'),
        ),
      ).thenAnswer((_) async => true);

      // Act
      await languageManager.setLocale(locale: locale);

      // Assert
      verify(
        () => localStorage.write<String>(key: StorageConstants.languageKey, data: locale.languageCode),
      ).called(1);
    });

    test('setThemeMode writes isDark value to storage', () async {
      // Arrange
      const isDark = true;
      when(
        () => localStorage.write<String>(
          key: any(named: 'key'),
          data: any(named: 'data'),
        ),
      ).thenAnswer((_) async => true);

      // Act
      await languageManager.setThemeMode(isDark: isDark);

      // Assert
      verify(
        () => localStorage.write<String>(key: StorageConstants.themeModeKey, data: (!isDark).toString()),
      ).called(1);
    });

    test('getLocal returns correct locale from storage', () async {
      // Arrange
      const storedLocaleCode = 'en';
      when(
        () => localStorage.hasData(
          key: any(named: 'key'),
        ),
      ).thenReturn(true);
      when(
        () => localStorage.read<String>(
          key: any(named: 'key'),
        ),
      ).thenAnswer((_) async => storedLocaleCode);

      // Act
      final locale = await languageManager.getLocal();

      // Assert
      expect(locale, isNotNull);
      expect(locale.languageCode, equals(storedLocaleCode));

      verify(
        () => localStorage.hasData(key: StorageConstants.languageKey),
      ).called(1);
      verify(
        () => localStorage.read<String>(key: StorageConstants.languageKey),
      ).called(1);
    });

    test('getThemeMode returns correct isDark value from storage', () async {
      // Arrange
      const storedIsDark = true;
      when(
        () => localStorage.hasData(
          key: any(named: 'key'),
        ),
      ).thenReturn(true);
      when(
        () => localStorage.read<String>(
          key: any(named: 'key'),
        ),
      ).thenAnswer((_) async => storedIsDark.toString());

      // Act
      final isDark = await languageManager.getThemeMode();

      // Assert
      expect(isDark, isNotNull);
      expect(isDark, equals(storedIsDark.toString()));

      verify(
        () => localStorage.hasData(key: StorageConstants.themeModeKey),
      ).called(1);
      verify(
        () => localStorage.read<String>(key: StorageConstants.themeModeKey),
      ).called(1);
    });
  });
}
