import 'package:cerati/common/services/network_manager/interceptors/secure_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';

class MockDio extends Mock implements Dio {}

class MockRequestInterceptorHandler extends Mock implements RequestInterceptorHandler {}

class MockSecureInterceptor extends Mock implements SecureInterceptor {}

const retryDelays = [
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
