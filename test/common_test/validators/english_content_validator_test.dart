import 'package:cerati/common/validators/english_content_validator.dart';
import 'package:test/test.dart';

void main() {
  // Arrange
  const englishContent = 'We appreciate your business!';
  const b6a6sContent = 'اليوم بنتكلم عن Boteto. Boteto مثل ما حنا عارفين يكبر Botetos.';
  group('English Validator', () {
    test('Empty English content returns error string', () {
      // Arrange
      const empty = '';
      // Act
      final result = englishContentValidator(empty);
      // Assert
      expect(result, 'Please enter your English content.');
    });
    test('Valid English content returns null', () {
      // Act
      final result = englishContentValidator(englishContent);
      // Assert
      expect(result, null);
    });
    test('Invalid English content which is less than %60 of English content returns error string', () {
      // Act
      final result = englishContentValidator(b6a6sContent);
      // Assert
      expect(result, 'Please enter at least 60% English content');
    });

    test('Validates English content successfully', () {
      // Act & Assert
      expect(isEnglishValidator('We appreciate your business!'), true);
      expect(isEnglishValidator('اليوم بنتكلم عن Boteto.  مثل ما حنا عارفين يكبر Botetos.'), false);
    });
  });
}
