import 'package:cerati/common/services/network_manager/Interceptors/secure_interceptor.dart';
import 'package:cerati/injection.dart';
import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class NetworkManager {
  NetworkManager({
    @Named('BaseUrl') required String baseUrl,
  }) {
    _setupDioClient(baseUrl);
  }

  final Dio dio = Dio();

  final timeout = const Duration(seconds: 30);
  final int retries = 10;
  final retryDelays = const [
    Duration(seconds: 1),
    Duration(seconds: 3),
    Duration(seconds: 5),
    Duration(seconds: 7),
    Duration(seconds: 9),
    Duration(seconds: 11),
    Duration(seconds: 13),
    Duration(seconds: 15),
    Duration(seconds: 17),
    Duration(seconds: 19),
  ];

  void _setupDioClient(String baseUrl) {
    dio.options.baseUrl = baseUrl;
    _defaultHeaders();
    _defaultInterceptors();

    _defaultTimeouts();
  }

  void _defaultHeaders() {
    dio.options.headers[Headers.contentTypeHeader] = Headers.jsonContentType;
    dio.options.headers[Headers.acceptHeader] = Headers.jsonContentType;
    //ToDo fetch user's language from local storage.
    dio.options.headers['lang'] = 'ar';
  }

  void _defaultInterceptors() {
    dio.interceptors.add(getIt<SecureInterceptor>());
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
