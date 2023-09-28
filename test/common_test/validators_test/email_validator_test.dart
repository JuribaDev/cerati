import 'package:cerati/common/validators/email_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Email Validator', () {
    test('Empty email returns error string', () {
      // Arrange
      const empty = '';
      // Act
      final result = emailValidator(empty);
      // Assert
      expect(result, 'Please enter your email.');
    });

    test('Invalid email returns error string', () {
      // Arrange
      const notEmail = 'notEmail';
      // Act
      final result = emailValidator(notEmail);
      // Assert
      expect(result, 'Please enter a valid email.');
    });

    test('Valid email returns null', () {
      // Arrange
      const email = 'juriba@example.com';
      // Act
      final result = emailValidator(email);
      // Assert
      expect(result, null);
    });
  });
}
