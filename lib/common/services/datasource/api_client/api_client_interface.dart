import 'package:cerati/features/login/model/login_request_model.dart';
import 'package:cerati/features/login/model/login_response_model.dart';
import 'package:cerati/features/register/model/register_request_model.dart';
import 'package:cerati/features/user_account/model/update_user_account_request_model.dart';
import 'package:cerati/features/user_account/model/update_user_password_request_model.dart';
import 'package:cerati/features/user_account/model/update_user_password_response_model.dart';
import 'package:cerati/features/user_account/model/user_account_response_model.dart';
import 'package:dio/dio.dart';

abstract class ApiClientInterface {
  Map<String, dynamic> body(Response<dynamic> response);

  Future<LoginResponseModel> login(LoginRequestModel loginRequestModel);

  Future<LoginResponseModel> register(RegisterRequestModel registerRequestModel);

  Future<UserAccountResponseModel> getUserAccount();

  Future<UserAccountResponseModel> updateUserAccount(UpdateUserAccountRequestModel updateUserAccountRequestModel);

  Future<UpdateUserPasswordResponseModel> updateUserPassword(
      UpdateUserPasswordRequestModel updateUserPasswordRequestModel);
}
