// ignore_for_file: inference_failure_on_function_invocation

import 'package:get_storage/get_storage.dart';
import 'package:logger/logger.dart';

class LocalStorage {
  LocalStorage(this._storage, this.logger);

  final GetStorage _storage;
  final Logger logger;

  Future<bool> clearAll() async {
    try {
      await _storage.erase();
      logger.i('all data deleted from storage');
      return true;
    } catch (e) {
      logger.e('Error occurred when clearAll methode called: $e');
      throw Exception('Error occurred when clearAll methode called: $e');
    }
  }

  Future<bool> clearByKey({required String key}) async {
    try {
      await _storage.remove(key);
      logger.i('$key data deleted from storage');
      return true;
    } catch (e) {
      logger.e('Error occurred when clearByKey methode called: $e');
      throw Exception('Error occurred when clearByKey methode called: $e');
    }
  }

  bool hasData({required String key}) {
    try {
      logger.i('$key has data in the storage');
      return _storage.hasData(key);
    } catch (e) {
      logger.e('Error occurred when hasData methode called: $e');
      throw Exception('Error occurred when hasData methode called: $e');
    }
  }

  Future<T> read<T>({required String key}) async {
    try {
      logger.i('$key data fetched from storage');
      return await _storage.read(key) as T;
    } catch (e) {
      logger.e('Error occurred when read methode called: $e');
      throw Exception('Error occurred when read methode called: $e');
    }
  }

  Future<bool> write<T>({required String key, required T data}) async {
    try {
      await _storage.write(key, data);
      logger.i('$key data saved to storage');
      return true;
    } catch (e) {
      logger.e('Error occurred when write methode called: $e');
      throw Exception('Error occurred when write methode called: $e');
    }
  }

  Future<bool> writeIfNull<T>({required String key, required T data}) async {
    try {
      await _storage.write(key, data);
      logger.i('$key data saved to storage in case if it was null');
      return true;
    } catch (e) {
      logger.e('Error occurred when writeIfNull methode called: $e');
      throw Exception('Error occurred when writeIfNull methode called: $e');
    }
  }

  Future<List<String>> getKeys() async {
    try {
      logger.i('get all keys from the storage');
      return await _storage.getKeys();
    } catch (e) {
      logger.e('Error occurred when getKeys methode called: $e');
      throw Exception('Error occurred when getKeys methode called: $e');
    }
  }

  Future<List<Map<String, dynamic>>> getValues() async {
    try {
      logger.i('fetch all data saved to storage');
      return await _storage.getValues();
    } catch (e) {
      logger.e('$e Unknown error occurred ');
      throw Exception('There are no values!');
    }
  }
}
