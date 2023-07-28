// ignore_for_file: one_member_abstracts

import 'package:cerati/common/constants/typedevs.dart';
import 'package:cerati/features/login/model/login_request_model.dart';
import 'package:cerati/features/login/model/login_response_model.dart';

abstract class LoginRepositoryInterface {
  EitherSuccessOrFailure<LoginResponseModel> login({required LoginRequestModel loginRequestModel});
}
