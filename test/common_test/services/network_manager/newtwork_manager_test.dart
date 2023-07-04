import 'package:cerati/common/services/network_manager/Interceptors/secoure_interceptor.dart';
import 'package:cerati/common/services/network_manager/newtwork_manager.dart';
import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter_test/flutter_test.dart';

import 'network_manager_setup.dart';

void main (){
  late NetworkManager networkManager;
  late SecureInterceptor secureInterceptor;
  late LogInterceptor logInterceptor;
  late RetryInterceptor retryInterceptor;
  const baseUrl = 'cerati.com';
  const timeout = Duration(seconds: 30);
  setUp(() {
    networkManager = NetworkManager(baseUrl);
    secureInterceptor = SecureInterceptor();
    logInterceptor = LogInterceptor();
    retryInterceptor = RetryInterceptor(dio: networkManager.dio, retries:networkManager.retries,retryDelays: networkManager.retryDelays,);
    networkManager.dio.interceptors.add(secureInterceptor);
    networkManager.dio.interceptors.add(retryInterceptor);
    networkManager.dio.interceptors.add(logInterceptor);

  });

  group('All unit test that belong to NetworkManager', () {

  test('check default values in NetworkManager class',(){
    expect(networkManager.timeout,timeout);
    expect(networkManager.retryDelays, retryDelays);
    expect(networkManager.retries, 5);
  });
  
  test('check if dio class has default interceptors like secureInterceptor,retryInterceptor and logInterceptor', () {
    expect(networkManager.dio.interceptors.contains(secureInterceptor),true);
    expect(networkManager.dio.interceptors.contains(retryInterceptor),true);
    expect(networkManager.dio.interceptors.contains(logInterceptor),true);
  });

  test('check if dio headers has default headers', () {
    expect(networkManager.dio.options.headers.containsValue(Headers.jsonContentType),true);
    expect(networkManager.dio.options.headers.containsValue('ar'),true);
  });

  test('check if dio connectTimeout, sendTimeout and receiveTimeout has default headers', () {
    expect(networkManager.dio.options.connectTimeout,timeout);
    expect(networkManager.dio.options.sendTimeout,timeout);
    expect(networkManager.dio.options.receiveTimeout,timeout);
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
    networkManager..addHeader(headerKey: 'juriba', headerValue: 'saleh')
      ..removeHeader('juriba');
    expect(networkManager.dio.options.headers.containsKey('juriba'),false);
  });


  });
}
