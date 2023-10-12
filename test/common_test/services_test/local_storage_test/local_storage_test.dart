// ignore_for_file: inference_failure_on_function_invocation

import 'package:cerati/common/services/datasource/local_storage/local_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mocktail/mocktail.dart';

class MockGetStorage extends Mock implements GetStorage {}

void main() {
  late LocalStorage localStorage;
  late MockGetStorage mockGetStorage;

  setUp(() {
    mockGetStorage = MockGetStorage();
    localStorage = LocalStorage(mockGetStorage);
  });
  group('Read method tests', () {
    test('read returns the data from storage', () async {
      // Arrange
      when(() => mockGetStorage.read('key')).thenReturn({'data': 'value'});

      // Act
      final result = await localStorage.read(key: 'key');

      // Assert
      expect(result, {'data': 'value'});
    });

    test('read methods should throws an Exception', () async {
      // Arrange
      when(() => localStorage.read(key: 'key')).thenThrow(Exception('Exception'));
    });
  });

  test('write saves the data to storage', () async {
    // Arrange
    when(() => mockGetStorage.write('key', {'data': 'value'})).thenAnswer((_) async {});

    // Act
    await localStorage.write(key: 'key', data: {'data': 'value'});

    // Assert
    verify(() => mockGetStorage.write('key', {'data': 'value'})).called(1);
  });

  test('clearByKey removes data from storage', () async {
    // Arrange
    when(() => mockGetStorage.remove('key')).thenAnswer((_) async {});

    // Act
    await localStorage.clearByKey(key: 'key');

    // Assert
    verify(() => mockGetStorage.remove('key')).called(1);
  });

  test('hasData checks whether the storage has data', () {
    // Arrange
    when(() => mockGetStorage.hasData('key')).thenReturn(true);

    // Act
    final result = localStorage.hasData(key: 'key');

    // Assert
    expect(result, true);
  });

  test('clearAll clears all data from storage', () async {
    // Arrange
    when(() => mockGetStorage.erase()).thenAnswer((_) async {});

    // Act
    await localStorage.clearAll();

    // Assert
    verify(() => mockGetStorage.erase()).called(1);
  });

  test('writeIfNull saves the data to storage if it is null', () async {
    // Arrange
    when(() => mockGetStorage.hasData('key')).thenReturn(false);
    when(() => mockGetStorage.write('key', {'data': 'value'})).thenAnswer((_) async {});

    // Act
    await localStorage.writeIfNull(key: 'key', data: {'data': 'value'});

    // Assert
    verify(() => mockGetStorage.write('key', {'data': 'value'})).called(1);
  });
}
