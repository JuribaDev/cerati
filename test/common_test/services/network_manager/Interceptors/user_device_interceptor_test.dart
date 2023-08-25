import 'package:cerati/common/services/network_manager/Interceptors/user_device_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

import '../network_manager_setup.dart';

void main() {
  late MockRequestInterceptorHandler handler;
  late UserDeviceInterceptor userDeviceInterceptor;
  late RequestOptions options;

  setUp(() {
    handler = MockRequestInterceptorHandler();
    userDeviceInterceptor = UserDeviceInterceptor();
    options = RequestOptions(path: 'Cerati');
  });

  group('UserDeviceInterceptor', () {
    test('Adds token when _secureResources flag is true', () {
      userDeviceInterceptor.onRequest(options, handler);
      expect(options.headers['X-Client-Name'], 'appName');
      expect(options.headers['X-Client-Device-Id'], 'deviceId');
      expect(options.headers['X-Client-Version-Name'], 'appVersion');
      expect(options.headers['X-Client-Version-Build'], 'buildNumber');
      expect(options.headers['User-Agent'], 'userAgentASCII');
    });
  });
}
