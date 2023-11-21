import 'package:cerati/core/local_storage/secure_local_storage.dart';
import 'package:dio/dio.dart';

class SecureInterceptor extends InterceptorsWrapper {
  SecureInterceptor(this.secureLocalStorage);

  final SecureLocalStorage secureLocalStorage;
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
