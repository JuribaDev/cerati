// ignore_for_file: inference_failure_on_function_invocation

import 'package:cerati/common/model/api_list_response_wrapper.dart';
import 'package:cerati/common/model/api_response_wrapper.dart';
import 'package:cerati/common/services/datasource/api_client/api_client.dart';
import 'package:cerati/features/login/model/login_response_model.dart';
import 'package:cerati/features/user_account/model/update_user_password_response_model.dart';
import 'package:cerati/features/user_account/model/user_account_response_model.dart';
import 'package:cerati/features/website/model/website_response_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/helpers.dart';

void main() {
  late ApiClient apiClient;
  late MockNetworkManager mockNetworkManager;
  late MockDio mockDio;
  late MockResponse mockResponse;
  final dioException = DioException(requestOptions: RequestOptions());

  setUp(() {
    mockNetworkManager = MockNetworkManager();
    mockResponse = MockResponse();
    mockDio = MockDio();
    when(() => mockNetworkManager.dio).thenReturn(mockDio);
    apiClient = ApiClient(mockNetworkManager);
  });

  group('ApiClient tests', () {
    group('CheckStatus tests', () {
      test('checkStatus should throw an DioException when the response is not a Map', () {
        // Arrange
        when(() => mockResponse.data).thenReturn('not a map');
        when(() => mockResponse.statusCode).thenReturn(200);
        when(() => mockResponse.requestOptions).thenReturn(RequestOptions());
        // Act & Assert
        expect(() => apiClient.checkStatus(mockResponse), throwsA(isA<DioException>()));
      });
      test('checkStatus should throw an DioException when the response status code is not 200', () {
        // Arrange
        when(() => mockResponse.data).thenReturn({'status': 'success'});
        when(() => mockResponse.statusCode).thenReturn(400);
        when(() => mockResponse.requestOptions).thenReturn(RequestOptions());
        // Act & Assert
        expect(() => apiClient.checkStatus(mockResponse), throwsA(isA<DioException>()));
      });
      test('checkStatus should throw an DioException when the response status is not success', () {
        // Arrange
        when(() => mockResponse.data).thenReturn({'status': 'error'});
        when(() => mockResponse.statusCode).thenReturn(200);
        when(() => mockResponse.requestOptions).thenReturn(RequestOptions());
        // Act & Assert
        expect(() => apiClient.checkStatus(mockResponse), throwsA(isA<DioException>()));
      });
      test('checkStatus should call networkManager.withToken when response is successful', () {
        // Arrange
        when(() => mockResponse.data).thenReturn({'status': 'success'});
        when(() => mockResponse.statusCode).thenReturn(200);
        // Act
        apiClient.checkStatus(mockResponse);
        // Assert
        verify(() => mockNetworkManager.withToken()).called(1);
      });
    });

    group('Login request tests', () {
      test('login request returns a LoginResponseModel when the request succeed', () async {
        // Arrange
        when(() => mockResponse.data).thenReturn(loginResponseJsonTest);
        when(() => mockResponse.statusCode).thenReturn(200);
        when(() => mockDio.post(any(), data: any(named: 'data'))).thenAnswer((_) async => mockResponse);
        // Act
        final response = await apiClient.login(loginRequestModelTest);

        // Assert
        expect(response, isA<LoginResponseModel>());
        expect(response, loginResponseModelTest);
        verify(() => mockDio.post(any(), data: any(named: 'data'))).called(1);
      });
      test('login request throws an DioException when the request fails', () async {
        // Arrange
        when(() => mockDio.post(any(), data: any(named: 'data'))).thenThrow(dioException);

        // Act & Assert
        expect(() => apiClient.login(loginRequestModelTest), throwsA(isA<DioException>()));
      });
    });

    group('Register request tests', () {
      test('register request returns a LoginResponseModel when the request succeed', () async {
        // Arrange
        when(() => mockResponse.data).thenReturn(loginResponseJsonTest);
        when(() => mockResponse.statusCode).thenReturn(200);
        when(() => mockDio.post(any(), data: any(named: 'data'))).thenAnswer((_) async => mockResponse);
        // Act
        final response = await apiClient.register(registerRequestModelTest);

        // Assert
        expect(response, isA<LoginResponseModel>());
        expect(response, loginResponseModelTest);
        verify(() => mockDio.post(any(), data: any(named: 'data'))).called(1);
      });

      test('register request throws an DioException when the request fails', () async {
        // Arrange
        when(() => mockDio.post(any(), data: any(named: 'data'))).thenThrow(dioException);

        // Act & Assert
        expect(() => apiClient.register(registerRequestModelTest), throwsA(isA<DioException>()));
      });
    });

    group('GetUserAccount request tests', () {
      test('getUserAccount request should returns a UserAccountResponseModel when the request succeed', () async {
        // Arrange
        when(() => mockResponse.data).thenReturn(apiResponseWrapperUserAccountResponseJsonTest);
        when(() => mockResponse.statusCode).thenReturn(200);
        when(() => mockDio.get(any())).thenAnswer((_) async => mockResponse);
        // Act
        final response = await apiClient.getUserAccount();
        // Assert
        expect(response, isA<ApiResponseWrapper<UserAccountResponseModel>>());
        expect(response.data, equals(apiResponseWrapperUserAccountResponseModelTest.data));
        verify(() => mockDio.get(any())).called(1);
      });

      test('getUserAccount request should throws an DioException when the request fails', () async {
        // Arrange
        when(() => mockDio.get(any())).thenThrow(dioException);
        // Act & Assert
        expect(() => apiClient.getUserAccount(), throwsA(isA<DioException>()));
      });
    });

    group('UpdateUserAccount request tests', () {
      test('updateUserAccount request should returns a UserAccountResponseModel when the request succeed', () async {
        // Arrange
        when(() => mockResponse.data).thenReturn(apiResponseWrapperUserAccountResponseJsonTest);
        when(() => mockResponse.statusCode).thenReturn(200);
        when(() => mockDio.put(any(), data: any(named: 'data'))).thenAnswer((_) async => mockResponse);
        // Act
        final response = await apiClient.updateUserAccount(updateUserAccountRequestModelTest);
        // Assert
        expect(response, isA<ApiResponseWrapper<UserAccountResponseModel>>());
        expect(response.data, apiResponseWrapperUserAccountResponseModelTest.data);
        verify(() => mockDio.put(any(), data: any(named: 'data'))).called(1);
      });
      test('updateUserAccount request should throws an DioException when the request fails', () async {
        // Arrange
        when(() => mockDio.put(any(), data: any(named: 'data'))).thenThrow(dioException);
        // Act & Assert
        expect(() => apiClient.updateUserAccount(updateUserAccountRequestModelTest), throwsA(isA<DioException>()));
      });
    });

    group('UpdateUserPassword request tests', () {
      test('updateUserPassword request should returns a UserAccountResponseModel when the request succeed', () async {
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
      test('updateUserPassword request should throws an DioException when the request fails', () async {
        // Arrange
        when(() => mockDio.put(any(), data: any(named: 'data'))).thenThrow(dioException);
        // Act & Assert
        expect(() => apiClient.updateUserPassword(updateUserPasswordRequestModelTest), throwsA(isA<DioException>()));
      });
    });

    group('CreateWebsite request tests', () {
      test('createWebsite request should returns a WebsiteResponseModel when the request succeed', () async {
        // Arrange
        when(() => mockResponse.data).thenReturn(apiResponseWrapperWebsiteResponseJsonTest);
        when(() => mockResponse.statusCode).thenReturn(200);
        when(() => mockDio.post(any(), data: any(named: 'data'))).thenAnswer((_) async => mockResponse);
        // Act
        final response = await apiClient.createWebsite(websiteRequestModelTest);
        // Assert
        expect(response, isA<ApiResponseWrapper<WebsiteResponseModel>>());
        expect(response.data, apiResponseWrapperWebsiteResponseModelTest.data);
        verify(() => mockDio.post(any(), data: any(named: 'data'))).called(1);
      });

      test('createWebsite request should throws an DioException when the request fails', () {
        // Arrange
        when(() => mockDio.post(any(), data: any(named: 'data'))).thenThrow(dioException);
        // Act & Assert
        expect(() => apiClient.createWebsite(websiteRequestModelTest), throwsA(isA<DioException>()));
      });
    });

    group('GetWebsiteById request tests', () {
      test('getWebsiteById request should returns a WebsiteResponseModel when the request succeed', () async {
        // Arrange
        when(() => mockResponse.data).thenReturn(apiResponseWrapperWebsiteResponseJsonTest);
        when(() => mockResponse.statusCode).thenReturn(200);
        when(() => mockDio.get(any())).thenAnswer((_) async => mockResponse);
        // Act
        final response = await apiClient.getWebsiteById(1);
        // Assert
        expect(response, isA<ApiResponseWrapper<WebsiteResponseModel>>());
        expect(response.data, apiResponseWrapperWebsiteResponseModelTest.data);
        verify(() => mockDio.get(any())).called(1);
      });
      test('getWebsiteById request should throws an DioException when the request fails', () {
        // Arrange
        when(() => mockDio.get(any())).thenThrow(dioException);
        // Act & Assert
        expect(() => apiClient.getWebsiteById(1), throwsA(isA<DioException>()));
      });
    });

    group('GetAllWebsites request tests', () {
      test('getAllWebsites request should returns a list of WebsiteResponseModel when the request succeed', () async {
        // Arrange
        when(() => mockResponse.data).thenReturn(apiListResponseWrapperWebsiteResponseJsonTest);
        when(() => mockResponse.statusCode).thenReturn(200);
        when(() => mockDio.get(any())).thenAnswer((_) async => mockResponse);
        // Act
        final response = await apiClient.getAllWebsites();
        // Assert
        expect(response, isA<ApiListResponseWrapper<WebsiteResponseModel>>());
        expect(response.list, apiListResponseWrapperWebsiteResponseModelTest.list);
        verify(() => mockDio.get(any())).called(1);
      });
      test('getAllWebsites request should throws an DioException when the request fails', () {
        // Arrange
        when(() => mockDio.get(any())).thenThrow(dioException);
        // Act & Assert
        expect(() => apiClient.getAllWebsites(), throwsA(isA<DioException>()));
      });
    });
  });
}
