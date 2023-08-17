import 'package:cerati/common/validators/arabic_content_validator.dart';
import 'package:test/test.dart';

void main() {
  // Arrange
  const arabicContent = 'اليوم بنتكلم عن البطاطس. البطاطس مثل ما حنا عارفين يكبر البطاطسات.';
  const b6a6sContent = 'اليوم بنتكلم عن Boteto. Boteto مثل ما حنا عارفين يكبر Botetos.';
  group('Arabic Validator', () {
    test('Empty Arabic content returns error string', () {
      // Arrange
      const empty = '';
      // Act
      final result = arabicContentValidator(empty);
      // Assert
      expect(result, 'Please enter your Arabic content.');
    });
    test('Valid Arabic content returns null', () {
      // Act
      final result = arabicContentValidator(arabicContent);
      // Assert
      expect(result, null);
    });
    test('Invalid Arabic content which is less than %60 of Arabic content returns error string', () {
      // Act
      final result = arabicContentValidator(b6a6sContent);
      // Assert
      expect(result, 'Please enter at least 70% Arabic content');
    });

    test('Validates Arabic content successfully', () {
      // Act & Assert
      expect(isArabicValidator('اليوم بنتكلم عن البطاطس. البطاطس مثل ما حنا عارفين يكبر البطاطسات.'), true);
      expect(isArabicValidator('اليوم بنتكلم عن Boteto.  مثل ما حنا عارفين يكبر  Botetos Botetos Botetos Botetos.'),
          false);
    });
  });
}
