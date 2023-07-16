import 'package:cerati/features/login/model/login_request_model.dart';
import 'package:cerati/features/login/model/login_response_model.dart';

abstract class ApiClientInterface {
  Future<LoginResponseModel> login(LoginRequestModel loginRequestModel);
}
