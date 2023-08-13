import 'package:cerati/common/services/network_manager/Interceptors/secoure_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter/foundation.dart';

class NetworkManager {
  NetworkManager({required String baseUrl, required SecureInterceptor secureInterceptor}) {
    _setupDioClient(baseUrl, secureInterceptor);
  }

  final Dio dio = Dio();

  final timeout = const Duration(seconds: 30);
  final int retries = 5;
  final retryDelays = const [
    Duration(seconds: 1),
    Duration(seconds: 3),
    Duration(seconds: 5),
    Duration(seconds: 7),
    Duration(seconds: 9),
  ];

  void _setupDioClient(String baseUrl, SecureInterceptor secureInterceptor) {
    dio.options.baseUrl = baseUrl;

    _defaultHeaders();
    _defaultInterceptors(secureInterceptor);

    _defaultTimeouts();
  }

  void _defaultHeaders() {
    dio.options.headers[Headers.contentTypeHeader] = Headers.jsonContentType;
    dio.options.headers[Headers.acceptHeader] = Headers.jsonContentType;
    //ToDo fetch user's language from local storage.
    dio.options.headers['lang'] = 'ar';
  }

  void _defaultInterceptors(SecureInterceptor secureInterceptor) {
    dio.interceptors.add(secureInterceptor);

    dio.interceptors.add(
      RetryInterceptor(
        dio: dio,
        retries: retries,
        retryDelays: retryDelays,
      ),
    );
    if (kDebugMode) {
      dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    }
  }

  void _defaultTimeouts() {
    dio.options.connectTimeout = timeout;
    dio.options.sendTimeout = timeout;
    dio.options.receiveTimeout = timeout;
  }

  void addHeader({required String headerKey, required String headerValue}) {
    dio.options.headers[headerKey] = headerValue;
  }

  void removeHeader(String headerKey) {
    dio.options.headers.remove(headerKey);
  }

  void clearHeaders() {
    dio.options.headers.clear();
  }

  SecureInterceptor getSecureInterceptor() {
    return dio.interceptors.whereType<SecureInterceptor>().single;
  }

  void withToken() {
    getSecureInterceptor().sendRequestWithToken();
  }

  void withoutToken() {
    getSecureInterceptor().sendRequestWithOutToken();
  }
}
