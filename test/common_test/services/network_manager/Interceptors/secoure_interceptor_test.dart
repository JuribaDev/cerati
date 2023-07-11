import 'package:cerati/common/services/network_manager/Interceptors/secure_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import '../network_manager_setup.dart';

void main() {
  late MockRequestInterceptorHandler handler;
  late SecureInterceptor secureInterceptor;
  late RequestOptions options;
  const authorization = 'authorization';

  setUp(() {
    handler = MockRequestInterceptorHandler();
    secureInterceptor = SecureInterceptor();
    options = RequestOptions(path: 'Cerati');
  });

  group('All unit test that belong to SecureInterceptor', () {
    test('Check the default value for _secureResources flag', () {
      expect(secureInterceptor.secureResources, true);
    });

    test('Adds token when _secureResources flag is true', () {
      secureInterceptor
        ..sendRequestWithToken()
        ..onRequest(options, handler);
      expect(options.headers['authorization'], 'token');
    });

    test('Does not add token when _secureResources flag is false', () {
      secureInterceptor
        ..sendRequestWithOutToken()
        ..onRequest(options, handler);
      expect(options.headers[authorization], null);
    });

    test('Calls next on handler', () {
      secureInterceptor.onRequest(options, handler);
      verify(() => handler.next(options)).called(1);
    });
  });
}
