import 'package:cerati/features/login/bloc/login_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/helpers.dart';

void main() {
  group('LoginEvent', () {
    test('Login event is created correctly', () {
      const loginEvent = LoginEvent.login(loginRequestModel: loginRequestModelTest);
      expect(loginEvent, isA<LoginEvent>());
      expect(loginEvent.loginRequestModel, loginRequestModelTest);
    });
  });
}
