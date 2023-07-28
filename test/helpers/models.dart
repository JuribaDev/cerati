import 'package:cerati/features/login/model/login_request_model.dart';
import 'package:cerati/features/login/model/login_response_model.dart';
import 'package:cerati/features/register/model/register_request_model.dart';

final userModelTest = UserModel(
  id: 2,
  firstName: 'John',
  lastName: 'Doe',
  fullName: 'John Doe',
  email: 'john.doe@example.com',
  createdAt: DateTime.parse('2023-01-01T00:00:00.000'),
  updatedAt: DateTime.parse('2023-01-01T00:00:00.000'),
);

final loginResponseModelTest = LoginResponseModel(
  status: 'success',
  token: 'userToken',
  userModel: userModelTest,
);

const loginRequestModelTest = LoginRequestModel(
  email: 'juriba1@gmail.comd',
  password: 'Admin1211',
);
const registerRequestModelTest = RegisterRequestModel(
  email: 'juriba@example.com',
  password: 'admin@1211',
  firstName: 'Juriba',
  lastName: 'Saleh',
);
