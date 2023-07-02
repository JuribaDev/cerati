import 'dart:io';

import 'package:cerati/common/services/network_manager/Interceptors/secoure_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';


class NetworkManager {
  NetworkManager(String baseUrl) {
    _setupDioClient(baseUrl);
  }

  final Dio dio = Dio();

  final int connectTimeoutInMillis = 30 * 1000;
  final int sentTimeoutInMillis = 30 * 1000;
  final int receiveTimeoutInMillis = 30 * 1000;

  void _setupDioClient(String baseUrl) {
   dio.

    dio.options.baseUrl = baseUrl;

    _defaultHeaders();
    _defaultInterceptors();
    _defaultTimeouts();
  }

  void _defaultHeaders() {
    dio.options.headers[Headers.contentTypeHeader] = Headers.jsonContentType;
    dio.options.headers[Headers.acceptHeader] = Headers.jsonContentType;
    dio.options.headers['Accept-Language'] = Get.find<LocaleService>().currentLocale.languageCode;
  }

  void _defaultInterceptors() {
    dio.interceptors.add(UnauthorizedInterceptor());
    dio.interceptors.add(RefreshInterceptor());
    dio.interceptors.add(InterceptorClient());
    if (kDebugMode) {
      dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    }
  }

  void _defaultTimeouts() {
    dio.options.connectTimeout = connectTimeoutInMillis;
    dio.options.sendTimeout = sentTimeoutInMillis;
    dio.options.receiveTimeout = receiveTimeoutInMillis;
  }

  void setBaseUrl(String baseUrl) {
    dio.options.baseUrl = baseUrl;
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

  void updateLanguageParam(String lang) {
    dio.interceptors.whereType<SecureInterceptor>().single.sendRequestWithToken();
  }

  void withToken() {
    dio.interceptors.whereType<SecureInterceptor>().single.sendRequestWithToken();
  }

  void withoutToken() {
    dio.interceptors.whereType<SecureInterceptor>().single.sendRequestWithToken();
  }
}
