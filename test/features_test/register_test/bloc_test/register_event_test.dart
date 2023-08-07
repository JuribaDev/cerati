import 'package:cerati/features/register/bloc/register_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/helpers.dart';

void main() {
  group('RegisterEvent', () {
    test('Register event is created correctly', () {
      const event = RegisterEvent.register(registerRequestModel: registerRequestModelTest);
      expect(event, isA<RegisterEvent>());
      expect(event.registerRequestModel, registerRequestModelTest);
    });
  });
}
