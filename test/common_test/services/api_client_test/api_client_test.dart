// ignore_for_file: inference_failure_on_function_invocation

import 'package:cerati/common/services/datasource/api_client/api_client.dart';
import 'package:cerati/features/login/model/login_response_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/helpers.dart';

void main() {
  late ApiClient apiClient;
  late MockNetworkManager mockNetworkManager;
  late MockDio mockDio;
  late MockResponse mockResponse;

  setUp(() {
    mockNetworkManager = MockNetworkManager();
    mockResponse = MockResponse();
    mockDio = MockDio();
    when(() => mockNetworkManager.dio).thenReturn(mockDio);
    apiClient = ApiClient(mockNetworkManager);
  });

  test('login request returns a LoginResponseModel when successful', () async {
    // Arrange
    when(() => mockResponse.data).thenReturn(loginJsonResponseTest);
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
    when(() => mockDio.post(any(), data: any(named: 'data'))).thenThrow(DioException(requestOptions: RequestOptions()));

    // Act & Assert
    expect(() => apiClient.login(loginRequestModelTest), throwsA(isA<DioException>()));
  });

  // Register endpoint
  test('register request returns a LoginResponseModel when successful', () async {
    // Arrange
    when(() => mockResponse.data).thenReturn(loginJsonResponseTest);
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
    when(() => mockDio.post(any(), data: any(named: 'data'))).thenThrow(DioException(requestOptions: RequestOptions()));

    // Act & Assert
    expect(() => apiClient.register(registerRequestModelTest), throwsA(isA<DioException>()));
  });
}
