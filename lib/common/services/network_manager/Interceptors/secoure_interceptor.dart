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

class LanguageInterceptor extends InterceptorsWrapper{
  String _language = 'ar';
  void sendRequestWithToken(String lang){
    _language = lang;
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.baseUrl = '${options.baseUrl}?lang=$_language';
  }
}
