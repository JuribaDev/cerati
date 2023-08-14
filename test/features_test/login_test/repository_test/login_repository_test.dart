import 'package:cerati/common/error_handling/parse_http_errors.dart';
import 'package:cerati/features/login/repository/login_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../helpers/helpers.dart';

void main() {
  late LoginRepository loginRepository;
  late MockApiClient mockApiClient;

  setUp(() {
    mockApiClient = MockApiClient();
    loginRepository = LoginRepository(mockApiClient);
  });
  group('LoginRepository tests', () {
    group('Login method tests', () {
      test('returns LoginResponseModel when login is successful', () async {
        // Arrange
        when(() => mockApiClient.login(loginRequestModelTest)).thenAnswer((_) async => loginResponseModelTest);

        // Act
        final result = await loginRepository.login(loginRequestModel: loginRequestModelTest);

        // Assert
        result.fold(
          (failure) => fail('Should return Right with LoginResponseModel'),
          (loginResponse) => expect(loginResponse, equals(loginResponseModelTest)),
        );
        verify(() => mockApiClient.login(loginRequestModelTest)).called(1);
      });

      test('returns Failure when login throws a AllHttpException', () async {
        // Arrange
        final exception = FormatException();
        when(() => mockApiClient.login(loginRequestModelTest)).thenThrow(exception);

        // Act
        final result = await loginRepository.login(loginRequestModel: loginRequestModelTest);

        // Assert
        result.fold(
          (failure) => expect(failure.message, equals(exception.message())),
          (_) => fail('Should return Failure'),
        );
        verify(() => mockApiClient.login(loginRequestModelTest)).called(1);
      });

      test('returns Failure with unexpected error message when login throws a non-AllHttpException', () async {
        // Arrange
        final exception = Exception('An unexpected error');
        when(() => mockApiClient.login(loginRequestModelTest)).thenThrow(exception);

        // Act
        final result = await loginRepository.login(loginRequestModel: loginRequestModelTest);

        // Assert
        result.fold(
          (failure) => expect(failure.message, equals('Unexpected error occurred: $exception')),
          (_) => fail('Should return Failure'),
        );
        verify(() => mockApiClient.login(loginRequestModelTest)).called(1);
      });
    });
  });
}
