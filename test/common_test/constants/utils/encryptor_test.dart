import 'package:cerati/common/utils/encryptor.dart';
import 'package:encrypt/encrypt.dart';
import 'package:test/test.dart';

void main() {
  group('Encryptor', () {
    // Arrange
    const originalText = 'This is a secret message';

    test('encrypt and decrypt should return original value', () {
      // Act
      final encryptedText = Encryptor.encrypt(originalText);
      final decryptedText = Encryptor.decrypt(encryptedText);

      // Assert
      expect(decryptedText, equals(originalText));
    });

    test('encrypted value should not be same as original', () {
      // Act
      final encryptedText = Encryptor.encrypt(originalText);

      // Assert
      expect(encryptedText, isNot(equals(originalText)));
    });

    test('decrypting an encrypted value with a different key should not return original value', () {
      // Arrange
      final differentKey = Key.fromLength(64);
      final differentIv = IV.fromLength(8);
      final encryptor = Encrypter(Salsa20(differentKey));
      final encryptedValue = encryptor.encrypt(originalText, iv: differentIv);

      // Act & Assert
      expect(Encryptor.decrypt(encryptedValue.base64), isNot(equals(originalText)));
    });
  });
}
