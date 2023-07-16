// ignore_for_file: inference_failure_on_function_invocation

import 'package:cerati/common/constants/api_contstants.dart';
import 'package:cerati/common/error_handling/parse_http_errors.dart';
import 'package:cerati/common/services/datasource/api_client/api_client_interface.dart';
import 'package:cerati/common/services/network_manager/network_manager.dart';
import 'package:cerati/features/login/model/login_request_model.dart';
import 'package:cerati/features/login/model/login_response_model.dart';
import 'package:dio/dio.dart';

class ApiClient implements ApiClientInterface {
  ApiClient(this._networkManager);

  final NetworkManager _networkManager;
  final ApiConstants _apiConstants = ApiConstants();

  @override
  Future<LoginResponseModel> login(LoginRequestModel loginRequestModel) async{
    try{
      final response = await _networkManager.dio.post(_apiConstants.auth.login,data: {
        loginRequestModel.toJson()
      },);
      if(response.statusCode != 200){
        throw parseHttpErrors(DioException(requestOptions: response.requestOptions));
      }
      return LoginResponseModel.fromJson(response.data as Map<String,dynamic>);
    }on DioException catch (error){
      throw parseHttpErrors(error);
    }
  }




}

class Failure extends Error {
  Failure({required this.message, required this.statusCode});

  final String message;
  final int statusCode;
}
