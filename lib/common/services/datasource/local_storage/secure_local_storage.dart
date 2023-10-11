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

class SecureLocalStorage implements SecureLocalStorageInterface {
  SecureLocalStorage(this._secureStorage);

  final FlutterSecureStorage _secureStorage;

  @override
  Future<void> addToStorage(String key, String value) async {
    try {
      await _secureStorage.write(key: key, value: value);
      logger.i('$key added to secure storage');
    } catch (e) {
      logger.e('Failed to add $key: $value to secure storage. Error: $e');
      throw Exception('Failed to add to secure storage');
    }
  }

  @override
  Future<String?> getFromStorage(String key) async {
    try {
      return await _secureStorage.read(key: key);
    } catch (e) {
      logger.e('Failed to get $key from secure storage. Error: $e');
      throw Exception('Failed to get from secure storage');
    }
  }

  @override
  Future<Map<String, String>> getAllFromStorage() async {
    try {
      return await _secureStorage.readAll();
    } catch (e) {
      logger.e('Failed to get all from secure storage. Error: $e');
      throw Exception('Failed to get all from secure storage');
    }
  }

  @override
  Future<void> deleteFromStorage(String key) async {
    try {
      await _secureStorage.delete(key: key);
      logger.i('$key deleted from secure storage');
    } catch (e) {
      logger.e('Failed to delete $key from secure storage. Error: $e');
      throw Exception('Failed to delete from secure storage');
    }
  }

  @override
  Future<bool> clearSecureStorage() async {
    try {
      await _secureStorage.deleteAll();
      logger.i('Secure storage has been cleared');
      return true;
    } catch (e) {
      logger.e('Failed to clear secure storage. Error: $e');
      throw Exception('Failed to clear secure storage');
    }
  }

  @override
  Future<bool> persistTokens(String accessToken, String refreshToken) async {
    try {
      await Future.wait([
        addToStorage(StorageConstants.accessTokenKey, accessToken),
        addToStorage(StorageConstants.refreshTokenKey, refreshToken),
      ]);
      return true;
    } catch (e) {
      logger.e('Failed to persist tokens. Error: $e');
      throw Exception('Failed to persist tokens');
    }
  }

  @override
  Future<bool> persistAccessToken(String accessToken) async {
    try {
      await addToStorage(StorageConstants.accessTokenKey, accessToken);
      return true;
    } catch (e) {
      logger.e('Failed to persist access token. Error: $e');
      throw Exception('Failed to persist access token');
    }
  }
}
