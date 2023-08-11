// ignore_for_file: inference_failure_on_function_invocation

import 'package:cerati/common/services/datasource/api_client/api_client.dart';
import 'package:cerati/features/login/model/login_response_model.dart';
import 'package:cerati/features/user_account/model/update_user_password_response_model.dart';
import 'package:cerati/features/user_account/model/user_account_response_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/helpers.dart';

void main() {
  late ApiClient apiClient;
  late MockNetworkManager mockNetworkManager;
  late MockDio mockDio;
  late MockResponse mockResponse;
  late Response response;

  setUp(() {
    mockNetworkManager = MockNetworkManager();
    mockResponse = MockResponse();
    mockDio = MockDio();
    when(() => mockNetworkManager.dio).thenReturn(mockDio);
    apiClient = ApiClient(mockNetworkManager);
    response = Response(requestOptions: RequestOptions());
  });

  group('ApiClient tests', () {
    group('Body function', () {
      test('returns body when response is 200 and status is not error', () {
        // Arrange
        response
          ..statusCode = 200
          ..data = {'status': 'success'};
        // Act & Assert
        expect(apiClient.body(response), equals({'status': 'success'}));
      });

      test('throws error when response is not 200', () {
        // Arrange
        response
          ..statusCode = 404
          ..data = {'status': 'error'};

        // Act & Assert
        expect(() => apiClient.body(response), throwsA(isA<DioException>()));
      });

      test('throws error when status is error', () {
        // Arrange
        response
          ..statusCode = 200
          ..data = {'status': 'error'};

        // Act & Assert
        expect(() => apiClient.body(response), throwsA(isA<DioException>()));
      });
    });

    group('Login request tests', () {
      test('login request returns a LoginResponseModel when successful', () async {
        // Arrange
        when(() => mockResponse.data).thenReturn(loginResponseJsonTest);
        when(() => mockResponse.statusCode).thenReturn(200);
        when(() => mockDio.post(any(), data: any(named: 'data'))).thenAnswer((_) async => mockResponse);
        // Act
        final response = await apiClient.login(loginRequestModelTest);

        // Assert
        expect(response, isA<LoginResponseModel>());
        expect(response.token, equals('userToken'));
        expect(response.userAccountResponseModel.id, equals(1));
        verify(() => mockDio.post(any(), data: any(named: 'data'))).called(1);
      });
      test('login request throws an error when request fails', () async {
        // Arrange
        when(() => mockDio.post(any(), data: any(named: 'data')))
            .thenThrow(DioException(requestOptions: RequestOptions()));

        // Act & Assert
        expect(() => apiClient.login(loginRequestModelTest), throwsA(isA<DioException>()));
      });
    });

    group('Register request tests', () {
      test('register request returns a LoginResponseModel when successful', () async {
        // Arrange
        when(() => mockResponse.data).thenReturn(loginResponseJsonTest);
        when(() => mockResponse.statusCode).thenReturn(200);
        when(() => mockDio.post(any(), data: any(named: 'data'))).thenAnswer((_) async => mockResponse);
        // Act
        final response = await apiClient.register(registerRequestModelTest);

        // Assert
        expect(response, isA<LoginResponseModel>());
        expect(response.token, equals('userToken'));
        expect(response.userAccountResponseModel.id, equals(1));
        verify(() => mockDio.post(any(), data: any(named: 'data'))).called(1);
      });

      test('register request throws an error when request fails', () async {
        // Arrange
        when(() => mockDio.post(any(), data: any(named: 'data')))
            .thenThrow(DioException(requestOptions: RequestOptions()));

        // Act & Assert
        expect(() => apiClient.register(registerRequestModelTest), throwsA(isA<DioException>()));
      });
    });

    group('GetUserAccount request tests', () {
      test('getUserAccount request should return a UserAccountResponseModel when successful', () async {
        // Arrange
        when(() => mockResponse.data).thenReturn(userAccountResponseJsonTest);
        when(() => mockResponse.statusCode).thenReturn(200);
        when(() => mockDio.get(any())).thenAnswer((_) async => mockResponse);
        // Act
        final response = await apiClient.getUserAccount();
        // Assert
        expect(response, isA<UserAccountResponseModel>());
        expect(response, equals(userAccountResponseModelTest));
        verify(() => mockDio.get(any())).called(1);
      });

      test('getUserAccount request should throws an error when request fails', () async {
        // Arrange
        when(() => mockDio.get(any())).thenThrow(DioException(requestOptions: RequestOptions()));
        // Act & Assert
        expect(() => apiClient.getUserAccount(), throwsA(isA<DioException>()));
      });
    });

    group('UpdateUserAccount request tests', () {
      test('updateUserAccount request should return a UserAccountResponseModel', () async {
        // Arrange
        when(() => mockResponse.data).thenReturn(userAccountResponseJsonTest);
        when(() => mockResponse.statusCode).thenReturn(200);
        when(() => mockDio.put(any(), data: any(named: 'data'))).thenAnswer((_) async => mockResponse);
        // Act
        final response = await apiClient.updateUserAccount(updateUserAccountRequestModelTest);
        // Assert
        expect(response, isA<UserAccountResponseModel>());
        expect(response, userAccountResponseModelTest);
        verify(() => mockDio.put(any(), data: any(named: 'data'))).called(1);
      });
      test('updateUserAccount request should throws an error when request fails', () async {
        // Arrange
        when(() => mockDio.put(any(), data: any(named: 'data')))
            .thenThrow(DioException(requestOptions: RequestOptions()));
        // Act & Assert
        expect(() => apiClient.updateUserAccount(updateUserAccountRequestModelTest), throwsA(isA<DioException>()));
      });
    });

    group('UpdateUserPassword request tests', () {
      test('UpdateUserPassword request should return a UserAccountResponseModel', () async {
        // Arrange
        when(() => mockResponse.data).thenReturn(updateUserPasswordResponseJsonTest);
        when(() => mockResponse.statusCode).thenReturn(200);
        when(() => mockDio.put(any(), data: any(named: 'data'))).thenAnswer((_) async => mockResponse);
        // Act
        final response = await apiClient.updateUserPassword(updateUserPasswordRequestModelTest);
        // Assert
        expect(response, isA<UpdateUserPasswordResponseModel>());
        expect(response, updateUserPasswordResponseModelTest);
        verify(() => mockDio.put(any(), data: any(named: 'data'))).called(1);
      });
      test('UpdateUserPassword request should throws an error when request fails', () async {
        // Arrange
        when(() => mockDio.put(any(), data: any(named: 'data')))
            .thenThrow(DioException(requestOptions: RequestOptions()));
        // Act & Assert
        expect(() => apiClient.updateUserPassword(updateUserPasswordRequestModelTest), throwsA(isA<DioException>()));
      });
    });
  });
}
