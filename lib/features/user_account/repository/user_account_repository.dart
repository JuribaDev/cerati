import 'package:cerati/common/constants/typedevs.dart';
import 'package:cerati/common/error_handling/failure.dart';
import 'package:cerati/common/error_handling/parse_http_errors.dart';
import 'package:cerati/common/services/datasource/api_client/api_client.dart';
import 'package:cerati/common/utils/either.dart';
import 'package:cerati/features/user_account/model/update_user_account_request_model.dart';
import 'package:cerati/features/user_account/model/update_user_password_request_model.dart';
import 'package:cerati/features/user_account/model/update_user_password_response_model.dart';
import 'package:cerati/features/user_account/model/user_account_response_model.dart';
import 'package:cerati/features/user_account/repository/user_account_repository_interface.dart';
import 'package:cerati/main.dart';

class UserAccountRepository implements UserAccountRepositoryInterface {
  UserAccountRepository(this._apiClient);

  final ApiClient _apiClient;

  @override
  EitherFailureOrSuccess<UserAccountResponseModel> getUserAccount() async {
    try {
      return Right(await _apiClient.getUserAccount());
    } on AllHttpException catch (error) {
      logger.e(error.message());
      return Left(Failure(message: error.message()));
    } catch (e) {
      logger.e(e.toString());
      return Left(Failure(message: 'Unexpected error occurred: $e'));
    }
  }

  @override
  EitherFailureOrSuccess<UserAccountResponseModel> updateUserAccount(
      {required UpdateUserAccountRequestModel updateUserAccountRequestModel}) async {
    try {
      return Right(await _apiClient.updateUserAccount(updateUserAccountRequestModel));
    } on AllHttpException catch (error) {
      logger.e(error.message());
      return Left(Failure(message: error.message()));
    } catch (e) {
      return Left(Failure(message: 'Unexpected error occurred: $e'));
    }
  }

  @override
  EitherFailureOrSuccess<UpdateUserPasswordResponseModel> updateUserPassword(
      {required UpdateUserPasswordRequestModel updateUserPasswordRequestModel}) async {
    try {
      return Right(await _apiClient.updateUserPassword(updateUserPasswordRequestModel));
    } on AllHttpException catch (error) {
      logger.e(error.message());
      return Left(Failure(message: error.message()));
    } catch (e) {
      return Left(Failure(message: 'Unexpected error occurred: $e'));
    }
  }
}
