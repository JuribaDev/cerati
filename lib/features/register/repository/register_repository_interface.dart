// ignore_for_file: one_member_abstracts

import 'package:cerati/common/constants/typedevs.dart';
import 'package:cerati/features/login/model/login_response_model.dart';
import 'package:cerati/features/register/model/register_request_model.dart';

abstract class RegisterRepositoryInterface {
  EitherSuccessOrFailure<LoginResponseModel> register({required RegisterRequestModel registerRequestModel});
}
