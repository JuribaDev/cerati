import 'dart:convert';

import 'package:encrypt/encrypt.dart';

class Encryptor {
  static String encrypt(String value) {
    final key = Key.fromLength(32);
    final iv = IV.fromLength(8);
    final encryptor = Encrypter(Salsa20(key));
    final encrypted = encryptor.encrypt(value, iv: iv);

    return encrypted.base64;
  }

  static String decrypt(String value) {
    final key = Key.fromLength(32);
    final iv = IV.fromLength(8);
    final encryptor = Encrypter(Salsa20(key));
    final decrypted = encryptor.decrypt(Encrypted(base64Decode(value)), iv: iv);

    return decrypted;
  }
}
