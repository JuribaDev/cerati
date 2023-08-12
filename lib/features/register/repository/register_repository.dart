import 'package:cerati/common/constants/typedevs.dart';
import 'package:cerati/common/error_handling/failure.dart';
import 'package:cerati/common/error_handling/parse_http_errors.dart';
import 'package:cerati/common/services/datasource/api_client/api_client.dart';
import 'package:cerati/common/utils/either.dart';
import 'package:cerati/features/login/model/login_response_model.dart';
import 'package:cerati/features/register/model/register_request_model.dart';
import 'package:cerati/features/register/repository/register_repository_interface.dart';
import 'package:cerati/main.dart';

class RegisterRepository implements RegisterRepositoryInterface {
  RegisterRepository(this._apiClient);

  final ApiClient _apiClient;

  @override
  EitherFailureOrSuccess<LoginResponseModel> register({required RegisterRequestModel registerRequestModel}) async {
    try {
      final registerResponse = await _apiClient.register(registerRequestModel);
      return Right(registerResponse);
    } on AllHttpException catch (error) {
      logger.e(error.message());
      return Left(Failure(message: error.message()));
    } catch (e) {
      logger.e(e.toString());
      return Left(Failure(message: 'Unexpected error occurred: $e'));
    }
  }
}
