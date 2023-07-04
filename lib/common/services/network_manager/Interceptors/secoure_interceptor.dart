import 'package:dio/dio.dart';

class SecureInterceptor extends InterceptorsWrapper{
  bool secureResources = true;

  void sendRequestWithToken(){
    secureResources = true;
  }

  void sendRequestWithOutToken(){
    secureResources = false;
  }
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if(secureResources){
      options.headers['authorization'] = 'token';
    }
    handler.next(options);
  }

}
