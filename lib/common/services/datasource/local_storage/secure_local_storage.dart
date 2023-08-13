import 'package:cerati/common/constants/storage_constants.dart';
import 'package:cerati/main.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class SecureLocalStorageInterface {
  Future<void> addToStorage(String key, String value);

  Future<String?> getFromStorage(String key);

  Future<Map<String, String>> getAllFromStorage();

  Future<void> deleteFromStorage(String key);

  Future<bool> clearSecureStorage();

  Future<bool> persistTokens(String accessToken, String refreshToken);

  Future<bool> persistAccessToken(String accessToken);
}

class SecureLocalStorage extends FlutterSecureStorage implements SecureLocalStorageInterface {
  /// Add value
  @override
  Future<void> addToStorage(String key, String value) async {
    await write(key: key, value: value).then((void data) {
      logger.i('$key: $value added to secure storage');
    });
  }

  /// Get value by key
  @override
  Future<String?> getFromStorage(String key) async {
    return read(key: key);
  }

  /// Get all values
  @override
  Future<Map<String, String>> getAllFromStorage() async {
    return readAll();
  }

  /// Delete value by key
  @override
  Future<void> deleteFromStorage(String key) async {
    await delete(key: key).then((void data) {
      logger.i('$key deleted from secure storage');
    });
  }

  /// Delete all values from storage
  @override
  Future<bool> clearSecureStorage() async {
    return deleteAll().then((void data) {
      logger.i('Secure storage has been cleared');
      return true;
    });
  }

  /// Persist Tokens
  @override
  Future<bool> persistTokens(String accessToken, String refreshToken) async {
    return Future.wait([
      addToStorage(StorageConstants.accessTokenKey, accessToken),
      addToStorage(StorageConstants.refreshTokenKey, refreshToken),
    ]).then((value) => true);
  }

  /// Persist one token
  @override
  Future<bool> persistAccessToken(String accessToken) async {
    return Future.wait([
      addToStorage(StorageConstants.accessTokenKey, accessToken),
    ]).then((value) => true);
  }
}
