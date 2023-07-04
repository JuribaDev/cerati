
import 'package:cerati/common/services/network_manager/Interceptors/secoure_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter/foundation.dart';


class NetworkManager {
  NetworkManager(String baseUrl) {
    _setupDioClient(baseUrl);
  }

  final Dio dio = Dio();

  final duration = const Duration(seconds: 30);
  final retryDelays =const  [
    Duration(seconds: 1),
    Duration(seconds: 3),
    Duration(seconds: 5),
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
    dio.interceptors.add(SecureInterceptor());
    dio.interceptors.add(RetryInterceptor(dio: dio, retries: 5, retryDelays:retryDelays, ));
    if (kDebugMode) {
      dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    }
  }

  void _defaultTimeouts() {
    dio.options.connectTimeout = duration;
    dio.options.sendTimeout = duration;
    dio.options.receiveTimeout = duration;
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

  void withToken() {
    dio.interceptors.whereType<SecureInterceptor>().single.sendRequestWithToken();
  }

  void withoutToken() {
    dio.interceptors.whereType<SecureInterceptor>().single.sendRequestWithToken();
  }
}
