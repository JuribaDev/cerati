import 'package:cerati/common/services/network_manager/Interceptors/secure_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter/foundation.dart';

abstract class Network {
  Network({required this.dio, required this.baseUrl});

  final Dio dio;
  final String baseUrl;

  void setupDioClient(String baseUrl);

  void defaultHeaders();

  void defaultInterceptors();

  void defaultTimeouts();

  void addHeader({required String headerKey, required String headerValue});

  void removeHeader({required String headerKey});

  void clearHeaders();

  SecureInterceptor getSecureInterceptor();

  void withToken();

  void withoutToken();
}

class NetworkManager extends Network {
  NetworkManager({required super.dio, required String baseUrl}) : super(baseUrl: baseUrl) {
    setupDioClient(baseUrl);
  }

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

  @override
  void setupDioClient(String baseUrl) {
    dio.options.baseUrl = baseUrl;
    defaultHeaders();
    defaultInterceptors();

    defaultTimeouts();
  }

  @override
  void defaultHeaders() {
    dio.options.headers[Headers.contentTypeHeader] = Headers.jsonContentType;
    dio.options.headers[Headers.acceptHeader] = Headers.jsonContentType;
    //ToDo fetch user's language from local storage.
    dio.options.headers['lang'] = 'ar';
  }

  @override
  void defaultInterceptors() {
    dio.interceptors.add(SecureInterceptor());
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

  @override
  void defaultTimeouts() {
    dio.options.connectTimeout = timeout;
    dio.options.sendTimeout = timeout;
    dio.options.receiveTimeout = timeout;
  }

  @override
  void addHeader({required String headerKey, required String headerValue}) {
    dio.options.headers[headerKey] = headerValue;
  }

  @override
  void removeHeader({required String headerKey}) {
    dio.options.headers.remove(headerKey);
  }

  @override
  void clearHeaders() {
    dio.options.headers.clear();
  }

  @override
  SecureInterceptor getSecureInterceptor() {
    return dio.interceptors.whereType<SecureInterceptor>().single;
  }

  @override
  void withToken() {
    getSecureInterceptor().sendRequestWithToken();
  }

  @override
  void withoutToken() {
    getSecureInterceptor().sendRequestWithOutToken();
  }
}
