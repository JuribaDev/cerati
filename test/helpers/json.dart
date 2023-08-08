final loginJsonResponseTest = {'status': 'success', 'token': 'userToken', 'user': userAccountJsonResponseTest};

final loginJsonRequestTest = {
  'email': 'juriba1@gmail.comd',
  'password': 'Admin1211',
};
final registerJsonRequestTest = {
  'first_name': 'Juriba',
  'last_name': 'Saleh',
  'email': 'juriba@example.com',
  'password': 'admin@1211',
};

final userAccountJsonResponseTest = {
  'id': 1,
  'first_name': 'Juriba',
  'last_name': 'Alsiari',
  'full_name': 'Juriba Alsiari',
  'email': 'juriba@example.com',
  'created_at': '2023-01-01T00:00:00.000',
  'updated_at': '2023-01-01T00:00:00.000'
};

final updateUserAccountJsonResponseTest = {
  'id': 1,
  'first_name': 'Juriba',
  'last_name': 'Alsiari',
  'email': 'juriba@example.com',
};

final updateUserPasswordJsonRequestTest = {
  'current_password': 'Admin@123',
  'new_password': 'Admin@12345',
};

final updateUserPasswordJsonResponseTest = {
  'message': 'Password updated successfully',
};
