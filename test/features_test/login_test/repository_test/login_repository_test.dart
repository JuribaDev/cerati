import 'package:cerati/common/error_handling/parse_http_errors.dart';
import 'package:cerati/common/services/datasource/api_client/api_client.dart';
import 'package:cerati/features/login/model/login_request_model.dart';
import 'package:cerati/features/login/model/login_response_model.dart';
import 'package:cerati/features/login/repository/login_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

// Mock ApiClient
class MockApiClient extends Mock implements ApiClient {}

void main() {
  late LoginRepository loginRepository;
  late MockApiClient mockApiClient;
  const mockLoginRequest = LoginRequestModel(email: 'juriba1@gmail.comd', password: 'Admin1211');

  setUp(() {
    mockApiClient = MockApiClient();
    loginRepository = LoginRepository(mockApiClient);
  });

  test('returns LoginResponseModel when login is successful', () async {
    // Arrange
    final loginResponseModel = LoginResponseModel(
      status: '',
      token: '',
      userModel: UserModel(
        id: 1,
        lastName: '',
        firstName: '',
        fullName: '',
        email: '',
        subdomain: '',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
    );

    when(() => mockApiClient.login(mockLoginRequest)).thenAnswer((_) async => loginResponseModel);

    // Act
    final result = await loginRepository.login();

    // Assert
    result.fold(
      (failure) => fail('Should return Right with LoginResponseModel'),
      (loginResponse) => expect(loginResponse, equals(loginResponseModel)),
    );
    verify(() => mockApiClient.login(mockLoginRequest)).called(1);
  });

  test('returns Failure when login throws a HttpException', () async {
    // Arrange
    final exception = UnauthorizedException();
    when(() => mockApiClient.login(mockLoginRequest)).thenThrow(exception);

    // Act
    final result = await loginRepository.login();

    // Assert
    result.fold(
      (failure) => expect(failure.message, equals(exception.message())),
      (_) => fail('Should return Failure'),
    );
    verify(() => mockApiClient.login(mockLoginRequest)).called(1);
  });

  test('returns Failure with unexpected error message when login throws a non-HttpException', () async {
    // Arrange
    final exception = Exception('An unexpected error');
    when(() => mockApiClient.login(mockLoginRequest)).thenThrow(exception);

    // Act
    final result = await loginRepository.login();

    // Assert
    result.fold(
      (failure) => expect(failure.message, equals('Unexpected error occurred: $exception')),
      (_) => fail('Should return Failure'),
    );
    verify(() => mockApiClient.login(mockLoginRequest)).called(1);
  });
}
