import 'package:cerati/common/constants/storage_constants.dart';
import 'package:cerati/common/services/datasource/local_storage/secure_local_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/helpers.dart';

void main() {
  late SecureLocalStorage secureStorage;
  late MockFlutterSecureStorage mockFlutterSecureStorage;

  setUp(() {
    mockFlutterSecureStorage = MockFlutterSecureStorage();
    secureStorage = SecureLocalStorage(mockFlutterSecureStorage);
  });

  group('All unit tests that belong to SecureStorage', () {
    group('AddToStorage method tests', () {
      test('addToStorage method when store a value succeed', () async {
        // Arrange
        when(() => mockFlutterSecureStorage.write(key: any(named: 'key'), value: any(named: 'value')))
            .thenAnswer((_) async {});

        // Act
        await secureStorage.addToStorage('key1', 'value1');

        // Assert
        verify(() => mockFlutterSecureStorage.write(key: 'key1', value: 'value1')).called(1);
      });

      test('addToStorage throws when write fails', () async {
        when(() => mockFlutterSecureStorage.write(key: any(named: 'key'), value: any(named: 'value')))
            .thenThrow(Exception('Failed to write'));

        expect(() => secureStorage.addToStorage('key1', 'value1'), throwsException);
      });
    });

    group('GetFromStorage method tests', () {
      test('getFromStorage method should returns a value when succeed', () async {
        // Arrange
        when(() => mockFlutterSecureStorage.read(key: any(named: 'key'))).thenAnswer((_) async => 'value1');

        // Act
        final value = await secureStorage.getFromStorage('key1');

        // Assert
        expect(value, 'value1');
      });
      test('throws exception when getFromStorage fails', () {
        // Arrange & Act
        when(() => mockFlutterSecureStorage.read(key: any(named: 'key'))).thenThrow(Exception('Failed to read'));

        expect(() => secureStorage.getFromStorage('key1'), throwsException);
        // Assert
        expect(() => secureStorage.getFromStorage('testKey'), throwsA(isA<Exception>()));
      });
    });

    group('GetAllFromStorage method tests', () {
      test('getAllFromStorage should return all values when succeed', () async {
        // Arrange
        final testData = {'testKey1': 'testValue1', 'testKey2': 'testValue2'};
        when(() => mockFlutterSecureStorage.readAll()).thenAnswer((_) async => testData);
        // Act
        final result = await secureStorage.getAllFromStorage();
        // Assert
        expect(result, testData);
      });

      test('throws exception when getAllFromStorage fails', () {
        // Arrange & Act
        when(() => mockFlutterSecureStorage.readAll()).thenThrow(Exception('Failed to get all from secure storage'));
        // Assert
        expect(() => secureStorage.getAllFromStorage(), throwsA(isA<Exception>()));
      });
    });

    group('DeleteFromStorage method tests', () {
      test('deleteFromStorage should delete a value when succeed', () async {
        when(() => mockFlutterSecureStorage.delete(key: 'testKey')).thenAnswer((_) async {});
        await secureStorage.deleteFromStorage('testKey');
      });

      test('throws exception when deleteFromStorage fails', () {
        // Arrange & Act
        when(() => mockFlutterSecureStorage.delete(key: 'testKey'))
            .thenThrow(Exception('Failed to delete from secure storage'));
        // Assert
        expect(() => secureStorage.deleteFromStorage('testKey'), throwsA(isA<Exception>()));
      });
    });

    group('ClearSecureStorage method', () {
      test('clearSecureStorage should delete all keys with associated values', () async {
        // Arrange
        when(() => mockFlutterSecureStorage.deleteAll()).thenAnswer((_) async {});
        // Act
        final result = await secureStorage.clearSecureStorage();
        // Assert
        expect(result, true);
      });

      test('throws exception when clearSecureStorage fails', () {
        // Arrange & Act
        when(() => mockFlutterSecureStorage.deleteAll()).thenThrow(Exception('Failed to clear secure storage'));
        // Assert
        expect(() => secureStorage.clearSecureStorage(), throwsA(isA<Exception>()));
      });
    });

    group('PersistTokens method tests', () {
      test('persistTokens should store the accessToken and refreshToken when succeed', () async {
        // Arrange
        when(() => mockFlutterSecureStorage.write(key: any(named: 'key'), value: any(named: 'value')))
            .thenAnswer((_) async {});
        // Act
        final result = await secureStorage.persistTokens('accessToken', 'refreshToken');
        // Assert
        expect(result, true);
      });

      test('throws exception when persistTokens fails', () {
        // Assert & Act
        when(() => mockFlutterSecureStorage.write(key: any(named: 'key'), value: any(named: 'value')))
            .thenThrow(Exception('Failed to persist tokens'));
        // Assert
        expect(() => secureStorage.persistTokens('accessToken', 'refreshToken'), throwsA(isA<Exception>()));
      });
    });

    group('PersistAccessToken method tests', () {
      test('persistAccessToken should store access token when succeed', () async {
        // Arrange
        when(() => mockFlutterSecureStorage.write(key: StorageConstants.accessTokenKey, value: 'accessToken'))
            .thenAnswer((_) async {});
        // Act
        final result = await secureStorage.persistAccessToken('accessToken');
        // Assert
        expect(result, true);
      });

      test('throws exception when persistAccessToken fails', () {
        // Arrange & Act
        when(() => mockFlutterSecureStorage.write(key: StorageConstants.accessTokenKey, value: 'accessToken'))
            .thenThrow(Exception('Failed to persist access token'));
        // Assert
        expect(() => secureStorage.persistAccessToken('accessToken'), throwsA(isA<Exception>()));
      });
    });
  });
}
