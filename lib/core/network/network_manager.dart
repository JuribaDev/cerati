import 'package:cerati/common/services/network_manager/Interceptors/secure_interceptor.dart';
import 'package:cerati/core/constants/api_constants.dart';
import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter/foundation.dart';

class NetworkManager {
  NetworkManager({
    required this.secureInterceptor,
    required this.dio,
    required this.baseUrl,
    required this.retryInterceptor,
  }) {
    setupDioClient();
  }

  final Dio dio;
  final String baseUrl;
  final RetryInterceptor retryInterceptor;
  final SecureInterceptor secureInterceptor;

  void setupDioClient() {
    dio.options.baseUrl = baseUrl;
    defaultHeaders();
    defaultInterceptors();

    defaultTimeouts();
  }

  void defaultHeaders() {
    dio.options.headers[Headers.contentTypeHeader] = Headers.jsonContentType;
    dio.options.headers[Headers.acceptHeader] = Headers.jsonContentType;
  }

  void defaultInterceptors() {
    dio.interceptors.add(retryInterceptor);
    dio.interceptors.add(secureInterceptor);
    if (kDebugMode) {
      dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    }
  }

  void defaultTimeouts() {
    dio.options.connectTimeout = ApiConstants.timeout;
    dio.options.sendTimeout = ApiConstants.timeout;
    dio.options.receiveTimeout = ApiConstants.timeout;
  }

  void addHeader({required String headerKey, required String headerValue}) {
    dio.options.headers[headerKey] = headerValue;
  }

  void removeHeader({required String headerKey}) {
    dio.options.headers.remove(headerKey);
  }

  void clearHeaders() {
    dio.options.headers.clear();
  }

  void requestWithToken() {
    secureInterceptor.sendRequestWithToken();
  }

  void requestWithoutToken() {
    secureInterceptor.sendRequestWithOutToken();
  }
}
