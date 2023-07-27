// ignore_for_file: inference_failure_on_function_invocation, avoid_dynamic_calls

import 'package:cerati/common/constants/api_constants.dart';
import 'package:cerati/common/error_handling/parse_http_errors.dart';
import 'package:cerati/common/services/datasource/api_client/api_client_interface.dart';
import 'package:cerati/common/services/network_manager/network_manager.dart';
import 'package:cerati/features/login/model/login_request_model.dart';
import 'package:cerati/features/login/model/login_response_model.dart';
import 'package:cerati/features/register/model/register_request_model.dart';
import 'package:cerati/main.dart';
import 'package:dio/dio.dart';

class ApiClient implements ApiClientInterface {
  ApiClient(this._networkManager);

  final NetworkManager _networkManager;

  @override
  Map<String, dynamic> body(Response<dynamic> response) {
    final body = response.data as Map<String, dynamic>;
    if (response.statusCode != 200 || body['status'] == 'error') {
      throw parseHttpErrors(DioException(requestOptions: response.requestOptions));
    }
    _networkManager.withToken();
    return body;
  }

  @override
  Future<LoginResponseModel> login(LoginRequestModel loginRequestModel) async {
    try {
      _networkManager.withoutToken();
      final response = await _networkManager.dio.post(
        ApiConstants.auth.login,
        data: loginRequestModel.toJson(),
      );
      return LoginResponseModel.fromJson(body(response));
    } on DioException catch (error) {
      logger.d(error.toString());
      throw parseHttpErrors(error);
    }
  }

  @override
  Future<LoginResponseModel> register(RegisterRequestModel registerRequestModel) async {
    try {
      _networkManager.withoutToken();
      final response = await _networkManager.dio.post(
        ApiConstants.auth.register,
        data: registerRequestModel.toJson(),
      );
      return LoginResponseModel.fromJson(body(response));
    } on DioException catch (error) {
      logger.d(error.toString());
      throw parseHttpErrors(error);
    }
  }
}

class Failure extends Error {
  Failure({required this.message});

  final String message;
}
