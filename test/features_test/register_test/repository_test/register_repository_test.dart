import 'package:cerati/common/error_handling/parse_http_errors.dart';
import 'package:cerati/features/register/repository/register_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/helpers.dart';

void main() {
  late RegisterRepository registerRepository;
  late MockApiClient apiClient;

  setUp(() {
    apiClient = MockApiClient();
    registerRepository = RegisterRepository(apiClient);
  });

  test('returns LoginResponseModel when register is successful', () async {
    // Arrange
    when(() => apiClient.register(registerRequestModelTest)).thenAnswer((_) async => loginResponseModelTest);

    // Act
    final res = await registerRepository.register(registerRequestModel: registerRequestModelTest);

    // Assert
    res.fold(
      (failure) => fail('Should return Right with LoginResponseModel'),
      (registerResponse) => expect(registerResponse, equals(loginResponseModelTest)),
    );
    verify(() => apiClient.register(registerRequestModelTest)).called(1);
  });

  test('returns Failure when register throws a HttpException', () async {
    // Arrange
    final exception = FormatException();
    when(() => apiClient.register(registerRequestModelTest)).thenThrow(exception);

    // Act
    final res = await registerRepository.register(registerRequestModel: registerRequestModelTest);

    // Assert
    res.fold(
      (failure) => expect(failure.message, equals(exception.message())),
      (_) => fail('Should return Failure'),
    );
    verify(() => apiClient.register(registerRequestModelTest)).called(1);
  });

  test('returns Failure with unexpected error message when register throws a non-HttpException', () async {
    // Arrange
    final exception = Exception('An unexpected error');
    when(() => apiClient.register(registerRequestModelTest)).thenThrow(exception);

    // Act
    final res = await registerRepository.register(registerRequestModel: registerRequestModelTest);

    // Assert
    res.fold(
      (failure) => expect(failure.message, equals('Unexpected error occurred: $exception')),
      (_) => fail('Should return Failure'),
    );
    verify(() => apiClient.register(registerRequestModelTest)).called(1);
  });
}
