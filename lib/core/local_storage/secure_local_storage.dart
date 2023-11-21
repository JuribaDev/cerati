import 'package:cerati/core/constants/storage_constants.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:logger/logger.dart';

class SecureLocalStorage {
  SecureLocalStorage(this._secureStorage, this.logger);

  final FlutterSecureStorage _secureStorage;
  final Logger logger;

  Future<void> addToStorage(String key, String value) async {
    try {
      await _secureStorage.write(key: key, value: value);
      logger.i('$key added to secure storage');
    } catch (e) {
      logger.e('Failed to add $key: $value to secure storage. Error: $e');
      throw Exception('Failed to add to secure storage');
    }
  }

  Future<String?> getFromStorage(String key) async {
    try {
      return await _secureStorage.read(key: key);
    } catch (e) {
      logger.e('Failed to get $key from secure storage. Error: $e');
      throw Exception('Failed to get from secure storage');
    }
  }

  Future<Map<String, String>> getAllFromStorage() async {
    try {
      return await _secureStorage.readAll();
    } catch (e) {
      logger.e('Failed to get all from secure storage. Error: $e');
      throw Exception('Failed to get all from secure storage');
    }
  }

  Future<void> deleteFromStorage(String key) async {
    try {
      await _secureStorage.delete(key: key);
      logger.i('$key deleted from secure storage');
    } catch (e) {
      logger.e('Failed to delete $key from secure storage. Error: $e');
      throw Exception('Failed to delete from secure storage');
    }
  }

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
