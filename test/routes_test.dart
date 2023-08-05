import 'package:cerati/common/constants/routes_constants.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('RoutesConstants', () {
    test('verify keys', () {
      expect(RoutesConstants.home, equals('/'));
      expect(RoutesConstants.login, equals('/login'));
      expect(RoutesConstants.register, equals('/register'));
    });
  });
}
