import 'package:cerati/common/model/api_list_response_wrapper.dart';
import 'package:cerati/common/model/api_response_wrapper.dart';
import 'package:cerati/features/login/model/login_request_model.dart';
import 'package:cerati/features/login/model/login_response_model.dart';
import 'package:cerati/features/register/model/register_request_model.dart';
import 'package:cerati/features/user_account/model/update_user_account_request_model.dart';
import 'package:cerati/features/user_account/model/update_user_password_request_model.dart';
import 'package:cerati/features/user_account/model/update_user_password_response_model.dart';
import 'package:cerati/features/user_account/model/user_account_response_model.dart';
import 'package:cerati/features/website/model/website_request_model.dart';
import 'package:cerati/features/website/model/website_response_model.dart';

final apiResponseWrapperUserAccountResponseModelTest =
    ApiResponseWrapper<UserAccountResponseModel>(status: 'success', data: userAccountResponseModelTest);

final apiResponseWrapperWebsiteResponseModelTest =
    ApiResponseWrapper<WebsiteResponseModel>(status: 'success', data: websiteResponseModelTest);

final apiListResponseWrapperWebsiteResponseModelTest = ApiListResponseWrapper<WebsiteResponseModel>(
    status: 'success', list: [websiteResponseModelTest, websiteResponseModelTest]);

final userAccountResponseModelTest = UserAccountResponseModel(
  id: 1,
  firstName: 'Juriba',
  lastName: 'Alsiari',
  fullName: 'Juriba Alsiari',
  email: 'juriba@example.com',
  createdAt: DateTime.parse('2023-01-01T00:00:00.000'),
  updatedAt: DateTime.parse('2023-01-01T00:00:00.000'),
);

const updateUserAccountRequestModelTest = UpdateUserAccountRequestModel(
  id: 2,
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
const updateUserPasswordRequestModelTest = UpdateUserPasswordRequestModel(
  currentPassword: 'Admin@123',
  newPassword: 'Admin@12345',
);

const updateUserPasswordResponseModelTest = UpdateUserPasswordResponseModel(
  status: 'success',
  message: 'Password updated successfully',
);
const registerRequestModelTest = RegisterRequestModel(
  email: 'juriba@example.com',
  password: 'admin@1211',
  firstName: 'Juriba',
  lastName: 'Saleh',
);

const websiteRequestModelTest = WebsiteRequestModel(
  languageId: 1,
  languageCode: 'en',
  languageName: 'English',
);

final websiteResponseModelTest = WebsiteResponseModel(
  id: 1,
  languageId: 1,
  languageCode: 'ar',
  languageName: 'Arabic',
  hasCertificate: false,
  hasEducation: false,
  hasProject: false,
  hasExperience: false,
  hasSkill: false,
  hasSMLink: false,
  createdAt: DateTime.parse('2023-09-26T15:30:42.000000Z'),
  updatedAt: DateTime.parse('2023-09-26T15:30:42.000000Z'),
);
