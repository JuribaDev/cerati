// ignore_for_file: one_member_abstracts

import 'package:cerati/common/constants/typedevs.dart';

abstract class LoginRepositoryInterface {
  EitherSuccessOrFailure<bool> login();
}
