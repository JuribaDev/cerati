final apiResponseWrapperUserAccountResponseJsonTest = {
  'status': 'success',
  'data': userAccountResponseJsonTest,
};

final apiResponseWrapperWebsiteResponseJsonTest = {
  'status': 'success',
  'data': websiteResponseJsonTest,
};

final apiListResponseWrapperWebsiteResponseJsonTest = {
  'status': 'success',
  'data': [
    websiteResponseJsonTest,
    websiteResponseJsonTest,
  ],
};

final loginResponseJsonTest = {'status': 'success', 'token': 'userToken', 'user': userAccountResponseJsonTest};

final loginRequestJsonTest = {'email': 'juriba1@gmail.comd', 'password': 'Admin1211'};
final registerRequestJsonTest = {
  'first_name': 'Juriba',
  'last_name': 'Saleh',
  'email': 'juriba@example.com',
  'password': 'admin@1211'
};

final userAccountResponseJsonTest = {
  'id': 1,
  'first_name': 'Juriba',
  'last_name': 'Alsiari',
  'full_name': 'Juriba Alsiari',
  'email': 'juriba@example.com',
  'created_at': '2023-01-01T00:00:00.000',
  'updated_at': '2023-01-01T00:00:00.000'
};

final updateUserAccountRequestJsonTest = {
  'id': 2,
  'first_name': 'Juriba',
  'last_name': 'Alsiari',
  'email': 'juriba@example.com',
};

final updateUserPasswordRequestJsonTest = {'current_password': 'Admin@123', 'new_password': 'Admin@12345'};

final updateUserPasswordResponseJsonTest = {'status': 'success', 'message': 'Password updated successfully'};

final websiteRequestJsonTest = {
  'language_id': 1,
  'language_code': 'en',
  'language_name': 'English',
};

final websiteResponseJsonTest = {
  'id': 1,
  'language_id': 1,
  'language_code': 'ar',
  'language_name': 'Arabic',
  'has_certificate': false,
  'has_education': false,
  'has_project': false,
  'has_experience': false,
  'has_skill': false,
  'has_s_m_link': false,
  'created_at': '2023-09-26T15:30:42.000Z',
  'updated_at': '2023-09-26T15:30:42.000Z',
};
