import 'package:cerati/common/constants/typedevs.dart';
import 'package:cerati/common/error_handling/parse_http_errors.dart';
import 'package:cerati/common/services/datasource/api_client/api_client.dart';
import 'package:cerati/common/utils/either.dart';
import 'package:cerati/features/login/model/login_request_model.dart';
import 'package:cerati/features/login/model/login_response_model.dart';
import 'package:cerati/features/login/repository/login_repository_interface.dart';

class LoginRepository implements LoginRepositoryInterface {
  LoginRepository(this._apiClient);

  final ApiClient _apiClient;

  @override
  EitherSuccessOrFailure<LoginResponseModel> login() async {
    try {
      final res = await _apiClient.login(const LoginRequestModel(email: 'juriba1@gmail.comd', password: 'Admin1211'));
      return Right(res);
    } on HttpException catch (e) {
      return Left(Failure(message: e.message()));
    } catch (e) {
      return Left(Failure(message: 'Unexpected error occurred: $e'));
    }
  }
}
