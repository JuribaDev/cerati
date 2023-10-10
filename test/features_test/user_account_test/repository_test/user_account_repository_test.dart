import 'package:cerati/common/error_handling/parse_http_errors.dart';
import 'package:cerati/features/user_account/repository/user_account_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../helpers/helpers.dart';

void main() {
  late UserAccountRepository userAccountRepository;
  late MockApiClient mockApiClient;

  setUp(() {
    mockApiClient = MockApiClient();
    userAccountRepository = UserAccountRepository(mockApiClient);
  });
  group('UserAccountRepository tests', () {
    group('GetUserAccount method tests', () {
      test('returns UserAccountResponseModel when getUserAccount is successful', () async {
        // Arrange
        when(() => mockApiClient.getUserAccount())
            .thenAnswer((_) async => apiResponseWrapperUserAccountResponseModelTest);
        // Act
        final response = await userAccountRepository.getUserAccount();
        // Assert
        response.fold(
          (_) => fail('Should return Right with UserAccountResponseModel'),
          (userAccountResponse) => expect(userAccountResponse, equals(apiResponseWrapperUserAccountResponseModelTest)),
        );
        verify(() => mockApiClient.getUserAccount()).called(1);
      });

      test('returns Failure when getUserAccount throws a AllHttpException', () async {
        // Arrange
        final exception = FormatException();
        when(() => mockApiClient.getUserAccount()).thenThrow(exception);
        // Act
        final response = await userAccountRepository.getUserAccount();
        // Assert
        response.fold(
          (failure) => expect(failure.message, equals(exception.message())),
          (_) => fail('Should return Failure'),
        );
        verify(() => mockApiClient.getUserAccount()).called(1);
      });

      test('returns Failure with unexpected error message when getUserAccount throws a non-AllHttpException', () async {
        // Arrange
        final exception = Exception('An unexpected error');
        when(() => mockApiClient.getUserAccount()).thenThrow(exception);
        // Act
        final response = await userAccountRepository.getUserAccount();
        // Assert
        response.fold(
          (failure) => expect(failure.message, equals('Unexpected error occurred: $exception')),
          (_) => fail('Should return Failure'),
        );
        verify(() => mockApiClient.getUserAccount()).called(1);
      });
    });

    group('UpdateUserAccount method tests', () {
      test('returns UserAccountResponseModel when updateUserAccount is successful', () async {
        // Arrange
        when(() => mockApiClient.updateUserAccount(updateUserAccountRequestModelTest))
            .thenAnswer((_) async => apiResponseWrapperUserAccountResponseModelTest);
        // Act
        final response = await userAccountRepository.updateUserAccount(
            updateUserAccountRequestModel: updateUserAccountRequestModelTest);
        // Assert
        response.fold(
          (_) => fail('Should return Right with UserAccountResponseModel'),
          (userAccountResponse) => expect(userAccountResponse, equals(apiResponseWrapperUserAccountResponseModelTest)),
        );
        verify(() => mockApiClient.updateUserAccount(updateUserAccountRequestModelTest)).called(1);
      });

      test('returns Failure when updateUserAccount throws a AllHttpException', () async {
        // Arrange
        final exception = ForbiddenException();
        when(() => mockApiClient.updateUserAccount(updateUserAccountRequestModelTest)).thenThrow(exception);
        // Act
        final response = await userAccountRepository.updateUserAccount(
            updateUserAccountRequestModel: updateUserAccountRequestModelTest);
        // Assert
        response.fold(
          (failure) => expect(failure.message, equals(exception.message())),
          (_) => fail('Should return Left with ForbiddenException'),
        );
        verify(() => mockApiClient.updateUserAccount(updateUserAccountRequestModelTest)).called(1);
      });

      test('returns Failure with unexpected error message when updateUserAccount throws a non-AllHttpException',
          () async {
        // Arrange
        final exception = Exception('An unexpected error');
        when(() => mockApiClient.updateUserAccount(updateUserAccountRequestModelTest)).thenThrow(exception);

        // Act
        final response = await userAccountRepository.updateUserAccount(
            updateUserAccountRequestModel: updateUserAccountRequestModelTest);

        // Assert
        response.fold(
          (failure) => expect(failure.message, equals('Unexpected error occurred: $exception')),
          (_) => fail('Should return Failure'),
        );
        verify(() => mockApiClient.updateUserAccount(updateUserAccountRequestModelTest)).called(1);
      });
    });

    group('updateUserPassword method tests', () {
      test('returns UpdateUserPasswordResponseModel when updatePassword is successful', () async {
        // Arrange
        when(() => mockApiClient.updateUserPassword(updateUserPasswordRequestModelTest))
            .thenAnswer((_) async => updateUserPasswordResponseModelTest);
        // Act
        final response = await userAccountRepository.updateUserPassword(
            updateUserPasswordRequestModel: updateUserPasswordRequestModelTest);
        // Assert
        response.fold(
          (_) => fail('Should return Right with UpdateUserPasswordResponseModel'),
          (updateUserPasswordResponse) =>
              expect(updateUserPasswordResponse, equals(updateUserPasswordResponseModelTest)),
        );
        verify(() => mockApiClient.updateUserPassword(updateUserPasswordRequestModelTest)).called(1);
      });

      test('returns Failure when updateUserPassword throws a AllHttpException', () async {
        // Arrange
        final ex = UnauthorizedException();
        when(() => mockApiClient.updateUserPassword(updateUserPasswordRequestModelTest)).thenThrow(ex);
        // Act
        final response = await userAccountRepository.updateUserPassword(
            updateUserPasswordRequestModel: updateUserPasswordRequestModelTest);
        // Assert
        response.fold(
          (failure) => expect(failure.message, ex.message()),
          (_) => fail('Should return Left with UnauthorizedException'),
        );
      });

      test('returns Failure when updateUserPassword throws a non-AllHttpException', () async {
        // Arrange
        final ex = Exception('An unexpected error');
        when(() => mockApiClient.updateUserPassword(updateUserPasswordRequestModelTest)).thenThrow(ex);
        // Act
        final response = await userAccountRepository.updateUserPassword(
            updateUserPasswordRequestModel: updateUserPasswordRequestModelTest);
        // Assert
        response.fold(
          (failure) => expect(failure.message, equals('Unexpected error occurred: $ex')),
          (_) => fail('Should return Left with Unexpected error'),
        );
      });
    });
  });
}
