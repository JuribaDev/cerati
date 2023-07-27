import 'package:cerati/features/login/model/login_request_model.dart';
import 'package:cerati/features/login/model/login_response_model.dart';
import 'package:cerati/features/register/model/register_request_model.dart';

final userModel = UserModel(
  id: 2,
  firstName: 'John',
  lastName: 'Doe',
  fullName: 'John Doe',
  email: 'john.doe@example.com',
  createdAt: DateTime.parse('2023-01-01T00:00:00.000'),
  updatedAt: DateTime.parse('2023-01-01T00:00:00.000'),
);

final loginResponseModel = LoginResponseModel(
  status: 'success',
  token: 'userToken',
  userModel: userModel,
);

const loginRequestModel = LoginRequestModel(
  email: 'juriba@example.com',
  password: 'admin',
);
const registerRequestModel = RegisterRequestModel(
  email: 'juriba@example.com',
  password: 'admin@1211',
  firstName: 'Juriba',
  lastName: 'Saleh',
);
