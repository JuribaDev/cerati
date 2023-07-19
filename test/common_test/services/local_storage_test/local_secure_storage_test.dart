import 'package:cerati/common/services/datasource/local_storage/secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockSecureStorage extends Mock implements SecureLocalStorage {}

void main() {
  late SecureStorage secureStorage;

  setUp(() {
    secureStorage = MockSecureStorage();
  });

  group('All unit tests that belong to SecureStorage', () {
    test('stores a value', () async {
      // Arrange
      when(() => secureStorage.addToStorage('testKey', 'testValue')).thenAnswer((_) async => {});

      // Act
      await secureStorage.addToStorage('testKey', 'testValue');

      // Assert
      verify(() => secureStorage.addToStorage('testKey', 'testValue')).called(1);
    });

    test('retrieves a value', () async {
      // Arrange
      when(() => secureStorage.getFromStorage('testKey')).thenAnswer((_) async => 'testValue');

      // Act
      final result = await secureStorage.getFromStorage('testKey');

      // Assert
      expect(result, 'testValue');
      verify(() => secureStorage.getFromStorage('testKey')).called(1);
    });

    test('retrieves all values', () async {
      // Arrange
      final testData = {'testKey1': 'testValue1', 'testKey2': 'testValue2'};
      when(() => secureStorage.getAllFromStorage()).thenAnswer((_) async => testData);

      // Act
      final result = await secureStorage.getAllFromStorage();

      // Assert
      expect(result, testData);
      verify(() => secureStorage.getAllFromStorage()).called(1);
    });

    test('deletes a value', () async {
      // Arrange
      when(() => secureStorage.deleteFromStorage('testKey')).thenAnswer((_) async {});

      // Act
      await secureStorage.deleteFromStorage('testKey');

      // Assert
      verify(() => secureStorage.deleteFromStorage('testKey')).called(1);
    });

    test('clears storage', () async {
      // Arrange
      when(() => secureStorage.clearSecureStorage()).thenAnswer((_) async => true);

      // Act
      final result = await secureStorage.clearSecureStorage();

      // Assert
      expect(result, true);
      verify(() => secureStorage.clearSecureStorage()).called(1);
    });

    test('persists tokens', () async {
      // Arrange
      when(() => secureStorage.persistTokens('accessToken', 'refreshToken')).thenAnswer((_) async => true);

      // Act
      final result = await secureStorage.persistTokens('accessToken', 'refreshToken');

      // Assert
      expect(result, true);
      verify(() => secureStorage.persistTokens('accessToken', 'refreshToken')).called(1);
    });

    test('persists access token', () async {
      // Arrange
      when(() => secureStorage.persistAccessToken('accessToken')).thenAnswer((_) async => true);

      // Act
      final result = await secureStorage.persistAccessToken('accessToken');

      // Assert
      expect(result, true);
      verify(() => secureStorage.persistAccessToken('accessToken')).called(1);
    });
  });
}
