import 'package:cerati/common/constants/typedevs.dart';
import 'package:cerati/common/model/api_response_wrapper.dart';
import 'package:cerati/features/user_account/model/update_user_account_request_model.dart';
import 'package:cerati/features/user_account/model/update_user_password_request_model.dart';
import 'package:cerati/features/user_account/model/update_user_password_response_model.dart';
import 'package:cerati/features/user_account/model/user_account_response_model.dart';

abstract class UserAccountRepositoryInterface {
  EitherFailureOrSuccess<ApiResponseWrapper<UserAccountResponseModel>> getUserAccount();

  EitherFailureOrSuccess<ApiResponseWrapper<UserAccountResponseModel>> updateUserAccount(
      {required UpdateUserAccountRequestModel updateUserAccountRequestModel});

  EitherFailureOrSuccess<UpdateUserPasswordResponseModel> updateUserPassword(
      {required UpdateUserPasswordRequestModel updateUserPasswordRequestModel});
}
