// ignore_for_file: inference_failure_on_function_invocation, avoid_dynamic_calls

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
  Future<LoginResponseModel> login(LoginRequestModel loginRequestModel) async {
    try {
      final response = await _networkManager.dio.post(
        _apiConstants.auth.login,
        data: {loginRequestModel.toJson()},
      );
      final body = response.data['asd'] as Map<String, dynamic>;
      if (response.statusCode != 200 || body['status'] == 'error') {
        throw parseHttpErrors(DioException(requestOptions: response.requestOptions));
      }
      return LoginResponseModel.fromJson(body);
    } on DioException catch (error) {
      throw parseHttpErrors(error);
    }
  }
}

class Failure extends Error {
  Failure({required this.message});

  final String message;
}
