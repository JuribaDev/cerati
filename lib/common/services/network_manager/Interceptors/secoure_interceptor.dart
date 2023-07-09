import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class SecureInterceptor extends InterceptorsWrapper {
  bool secureResources = true;

  void sendRequestWithToken() {
    secureResources = true;
  }

  void sendRequestWithOutToken() {
    secureResources = false;
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (secureResources) {
      options.headers['authorization'] = 'token';
    }
    handler.next(options);
  }
}
