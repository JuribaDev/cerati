import 'package:cerati/common/services/network_manager/Interceptors/secoure_interceptor.dart';
import 'package:cerati/common/services/network_manager/newtwork_manager.dart';
import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mocktail/mocktail.dart';

import 'network_manager_setup.dart';


class MockSecureInterceptor extends Mock implements SecureInterceptor {}

void main() {
  late NetworkManager networkManager;
  late MockSecureInterceptor secureInterceptor;
    late LogInterceptor logInterceptor;
  late RetryInterceptor retryInterceptor;
  const timeout = Duration(seconds: 30);

  setUp(() {
    logInterceptor = LogInterceptor();
    secureInterceptor = MockSecureInterceptor();
    networkManager = NetworkManager(baseUrl: 'http://test.com', secureInterceptor: secureInterceptor);
    retryInterceptor = RetryInterceptor(dio: networkManager.dio);
    networkManager.dio.interceptors.add(logInterceptor);
    networkManager.dio.interceptors.add(retryInterceptor);

  });

  group('All unit test that belong to NetworkManager', () {
    test('check default values in NetworkManager class', () {
      expect(networkManager.timeout, timeout);
      expect(networkManager.retryDelays, retryDelays);
      expect(networkManager.retries, 5);
    });

    test('check if dio class has default interceptors like secureInterceptor,retryInterceptor and logInterceptor', () {
      expect(networkManager.dio.interceptors.contains(secureInterceptor), true);
      expect(networkManager.dio.interceptors.contains(retryInterceptor), true);
      expect(networkManager.dio.interceptors.contains(logInterceptor), true);
    });

    test('check if dio headers has default headers', () {
      expect(networkManager.dio.options.headers.containsValue(Headers.jsonContentType), true);
      expect(networkManager.dio.options.headers.containsValue('ar'), true);
    });

    test('check if dio connectTimeout, sendTimeout and receiveTimeout has default headers', () {
      expect(networkManager.dio.options.connectTimeout, timeout);
      expect(networkManager.dio.options.sendTimeout, timeout);
      expect(networkManager.dio.options.receiveTimeout, timeout);
    });

    test('test clearHeaders methode', () {
      networkManager.clearHeaders();
      expect(networkManager.dio.options.headers.length, 0);
    });

    test('test addHeader methode', () {
      networkManager.addHeader(headerKey: 'juriba', headerValue: 'Saleh');
      expect(networkManager.dio.options.headers.containsValue('Saleh'), true);
      expect(networkManager.dio.options.headers.containsKey('juriba'), true);
    });

    test('test removeHeader methode', () {
      networkManager
        ..addHeader(headerKey: 'juriba', headerValue: 'saleh')
        ..removeHeader('juriba');
      expect(networkManager.dio.options.headers.containsKey('juriba'), false);
    });
  });


  test('calls SecureInterceptor.sendRequestWithToken() when withToken is called', () {
    networkManager.withToken();

    verify(() => secureInterceptor.sendRequestWithToken()).called(1);
  });

  test('calls SecureInterceptor.sendRequestWithoutToken() when withoutToken is called', () {
    networkManager.withoutToken();

    verify(() => secureInterceptor.sendRequestWithOutToken()).called(1);
  });
}

