import 'package:dio/dio.dart';

class SecureInterceptor extends InterceptorsWrapper{
  bool _secureResources = true;
  void sendRequestWithToken(){
    _secureResources = true;
  }

  void sendRequestWithOutToken(){
    _secureResources = false;
  }
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if(_secureResources){
      options.headers['authorization'] = 'token';
    }
    handler.next(options);
  }

}
