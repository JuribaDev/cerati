// ignore_for_file: inference_failure_on_function_invocation, avoid_dynamic_calls

import 'package:cerati/common/constants/api_constants.dart';
import 'package:cerati/common/error_handling/parse_http_errors.dart';
import 'package:cerati/common/model/api_list_response_wrapper.dart';
import 'package:cerati/common/model/api_response_wrapper.dart';
import 'package:cerati/common/services/datasource/api_client/api_client_interface.dart';
import 'package:cerati/common/services/network_manager/network_manager.dart';
import 'package:cerati/features/login/model/login_request_model.dart';
import 'package:cerati/features/login/model/login_response_model.dart';
import 'package:cerati/features/register/model/register_request_model.dart';
import 'package:cerati/features/user_account/model/update_user_account_request_model.dart';
import 'package:cerati/features/user_account/model/update_user_password_request_model.dart';
import 'package:cerati/features/user_account/model/update_user_password_response_model.dart';
import 'package:cerati/features/user_account/model/user_account_response_model.dart';
import 'package:cerati/features/website/model/website_request_model.dart';
import 'package:cerati/features/website/model/website_response_model.dart';
import 'package:cerati/main.dart';
import 'package:dio/dio.dart';

class ApiClient implements ApiClientInterface {
  ApiClient(this._networkManager);

  final NetworkManager _networkManager;

  @override
  void checkStatus(Response<dynamic> response) {
    if (response.data is! Map) {
      throw parseHttpErrors(DioException(requestOptions: response.requestOptions, message: 'Response is not a Map'));
    }
    final body = response.data as Map<String, dynamic>;

    if (response.statusCode != 200 || body['status'] != 'success') {
      throw parseHttpErrors(DioException(requestOptions: response.requestOptions));
    }
    _networkManager.withToken();
  }

  @override
  Future<LoginResponseModel> login(LoginRequestModel loginRequestModel) async {
    try {
      _networkManager.withoutToken();
      final response = await _networkManager.dio.post(
        ApiConstants.auth.login,
        data: loginRequestModel.toJson(),
      );
      checkStatus(response);
      return LoginResponseModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (error) {
      logger.e(error.message);
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
      checkStatus(response);
      return LoginResponseModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (error) {
      logger.e(error.message);
      throw parseHttpErrors(error);
    }
  }

  @override
  Future<ApiResponseWrapper<UserAccountResponseModel>> getUserAccount() async {
    try {
      final response = await _networkManager.dio.get(ApiConstants.auth.getUserAccount);
      checkStatus(response);
      return ApiResponseWrapper<UserAccountResponseModel>.fromJson(
        response.data as Map<String, dynamic>,
        fromJsonT: UserAccountResponseModel.fromJson,
      );
    } on DioException catch (error) {
      logger.e(error.toString());
      throw parseHttpErrors(error);
    }
  }

  @override
  Future<ApiResponseWrapper<UserAccountResponseModel>> updateUserAccount(
      UpdateUserAccountRequestModel updateUserAccountRequestModel) async {
    try {
      final response = await _networkManager.dio.put(
        ApiConstants.auth.updateUserAccount,
        data: updateUserAccountRequestModel.toJson(),
      );
      checkStatus(response);
      return ApiResponseWrapper<UserAccountResponseModel>.fromJson(
        response.data as Map<String, dynamic>,
        fromJsonT: UserAccountResponseModel.fromJson,
      );
    } on DioException catch (error) {
      logger.e(error.message);
      throw parseHttpErrors(error);
    }
  }

  @override
  Future<UpdateUserPasswordResponseModel> updateUserPassword(
      UpdateUserPasswordRequestModel updateUserPasswordRequestModel) async {
    try {
      final response = await _networkManager.dio.put(
        ApiConstants.auth.updateUserPassword,
        data: updateUserPasswordRequestModel.toJson(),
      );
      checkStatus(response);
      return UpdateUserPasswordResponseModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (error) {
      logger.e(error.message);
      throw parseHttpErrors(error);
    }
  }

  @override
  Future<ApiResponseWrapper<WebsiteResponseModel>> createWebsite(WebsiteRequestModel websiteRequestModel) async {
    try {
      final response = await _networkManager.dio.post(
        ApiConstants.website.createWebsite,
        data: websiteRequestModel.toJson(),
      );
      checkStatus(response);
      return ApiResponseWrapper.fromJson(
        response.data as Map<String, dynamic>,
        fromJsonT: WebsiteResponseModel.fromJson,
      );
    } on DioException catch (error) {
      logger.e(error.message);
      throw parseHttpErrors(error);
    }
  }

  @override
  Future<ApiResponseWrapper<WebsiteResponseModel>> getWebsiteById(int websiteId) async {
    try {
      final response = await _networkManager.dio.get(
        ApiConstants.website.getWebsiteById(websiteId: websiteId),
      );
      checkStatus(response);
      return ApiResponseWrapper.fromJson(
        response.data as Map<String, dynamic>,
        fromJsonT: WebsiteResponseModel.fromJson,
      );
    } on DioException catch (error) {
      logger.e(error.message);
      throw parseHttpErrors(error);
    }
  }

  @override
  Future<ApiListResponseWrapper<WebsiteResponseModel>> getAllWebsites() async {
    try {
      final response = await _networkManager.dio.get(ApiConstants.website.getAllWebsites);
      checkStatus(response);
      return ApiListResponseWrapper<WebsiteResponseModel>.fromJson(
        response.data as Map<String, dynamic>,
        fromJsonListT: WebsiteResponseModel.fromJson,
      );
    } on DioException catch (error) {
      logger.e(error.message);
      throw parseHttpErrors(error);
    }
  }
}
