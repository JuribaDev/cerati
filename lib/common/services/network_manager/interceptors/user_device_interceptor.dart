import 'package:dio/dio.dart';

class UserDeviceInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['X-Client-Name'] = 'appName';
    options.headers['X-Client-Device-Id'] = 'deviceId';
    options.headers['X-Client-Version-Name'] = 'appVersion';
    options.headers['X-Client-Version-Build'] = 'buildNumber';
    options.headers['User-Agent'] = 'userAgentASCII';

    handler.next(options);
  }
}
