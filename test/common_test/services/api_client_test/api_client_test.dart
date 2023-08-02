// ignore_for_file: inference_failure_on_function_invocation

import 'package:cerati/common/services/datasource/api_client/api_client.dart';
import 'package:cerati/common/services/network_manager/network_manager.dart';
import 'package:cerati/features/login/model/login_response_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/json.dart';
import '../../../helpers/models.dart';

class MockNetworkManager extends Mock implements NetworkManager {}

class MockDio extends Mock implements Dio {}

class MockResponse extends Mock implements Response<dynamic> {}

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
    when(() => mockResponse.data).thenReturn(loginJsonResponse);
    when(() => mockResponse.statusCode).thenReturn(200);
    when(() => mockDio.post(any(), data: any(named: 'data'))).thenAnswer((_) async => mockResponse);
    // Act
    final response = await apiClient.login(loginRequestModelTest);

    // Assert
    expect(response, isA<LoginResponseModel>());
    expect(response.token, equals('userToken'));
    expect(response.userModel.id, equals(2));
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
    when(() => mockResponse.data).thenReturn(loginJsonResponse);
    when(() => mockResponse.statusCode).thenReturn(200);
    when(() => mockDio.post(any(), data: any(named: 'data'))).thenAnswer((_) async => mockResponse);
    // Act
    final response = await apiClient.register(registerRequestModelTest);

    // Assert
    expect(response, isA<LoginResponseModel>());
    expect(response.token, equals('userToken'));
    expect(response.userModel.id, equals(2));
    verify(() => mockDio.post(any(), data: any(named: 'data'))).called(1);
  });
  test('register request throws an error when request fails', () async {
    // Arrange
    when(() => mockDio.post(any(), data: any(named: 'data'))).thenThrow(DioException(requestOptions: RequestOptions()));

    // Act & Assert
    expect(() => apiClient.register(registerRequestModelTest), throwsA(isA<DioException>()));
  });
}