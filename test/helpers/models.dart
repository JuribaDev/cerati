import 'package:cerati/features/login/model/login_request_model.dart';
import 'package:cerati/features/login/model/login_response_model.dart';
import 'package:cerati/features/register/model/register_request_model.dart';
import 'package:cerati/features/user_account/model/update_user_account_request_model.dart';
import 'package:cerati/features/user_account/model/update_user_password_request_model.dart';
import 'package:cerati/features/user_account/model/update_user_password_response_model.dart';
import 'package:cerati/features/user_account/model/user_account_response_model.dart';

final userAccountResponseModelTest = UserAccountResponseModel(
  id: 1,
  firstName: 'Juriba',
  lastName: 'Alsiari',
  fullName: 'Juriba Alsiari',
  email: 'juriba@example.com',
  createdAt: DateTime.parse('2023-01-01T00:00:00.000'),
  updatedAt: DateTime.parse('2023-01-01T00:00:00.000'),
);

const updateUserAccountResponseModelTest = UpdateUserAccountRequestModel(
  id: 1,
  firstName: 'Juriba',
  lastName: 'Alsiari',
  email: 'juriba@example.com',
);

final loginResponseModelTest = LoginResponseModel(
  status: 'success',
  token: 'userToken',
  userAccountResponseModel: userAccountResponseModelTest,
);

const loginRequestModelTest = LoginRequestModel(
  email: 'juriba1@gmail.comd',
  password: 'Admin1211',
);
const updatePasswordRequestModelTest = UpdateUserPasswordRequestModel(
  currentPassword: 'Admin@123',
  newPassword: 'Admin@12345',
);

const updatePasswordResponseModelTest = UpdateUserPasswordResponseModel(
  message: 'Password updated successfully',
);
const registerRequestModelTest = RegisterRequestModel(
  email: 'juriba@example.com',
  password: 'admin@1211',
  firstName: 'Juriba',
  lastName: 'Saleh',
);
