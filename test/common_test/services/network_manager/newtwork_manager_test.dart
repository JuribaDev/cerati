import 'package:cerati/common/services/network_manager/Interceptors/secure_interceptor.dart';
import 'package:cerati/common/services/network_manager/network_manager.dart';
import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'network_manager_setup.dart';

void main() {
  late NetworkManager networkManager;

  setUp(() {
    networkManager = NetworkManager(
      dio: Dio(),
      baseUrl: 'https://www.example.com',
    );
  });

  test('setupDioClient() sets the base url', () {
    expect(networkManager.dio.options.baseUrl, 'https://www.example.com');
  });

  test('defaultHeaders() sets the default headers', () {
    expect(networkManager.dio.options.headers[Headers.contentTypeHeader], Headers.jsonContentType);
    expect(networkManager.dio.options.headers[Headers.acceptHeader], Headers.jsonContentType);
    expect(networkManager.dio.options.headers['lang'], 'ar');
  });

  test('defaultInterceptors() adds the SecureInterceptor and the RetryInterceptor', () {
    expect(networkManager.dio.interceptors.whereType<SecureInterceptor>().length, 1);
    expect(networkManager.dio.interceptors.whereType<RetryInterceptor>().length, 1);
  });

  test('defaultTimeouts() sets the default timeouts', () {
    expect(networkManager.dio.options.connectTimeout, networkManager.timeout);
    expect(networkManager.dio.options.sendTimeout, networkManager.timeout);
    expect(networkManager.dio.options.receiveTimeout, networkManager.timeout);
  });

  test('addHeader() adds a header', () {
    networkManager.addHeader(headerKey: 'headerKey', headerValue: 'headerValue');
    expect(networkManager.dio.options.headers['headerKey'], 'headerValue');
  });

  test('removeHeader() removes a header', () {
    networkManager.removeHeader(headerKey: 'headerKey');
    expect(networkManager.dio.options.headers['headerKey'], isNull);
  });

  test('clearHeaders() clears all headers', () {
    networkManager.clearHeaders();
    expect(networkManager.dio.options.headers, {});
  });

  test('getSecureInterceptor() returns the SecureInterceptor', () {
    expect(networkManager.getSecureInterceptor(), isA<SecureInterceptor>());
  });
}
