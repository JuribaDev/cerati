// ignore_for_file: inference_failure_on_function_invocation

import 'package:cerati/main.dart';
import 'package:get_storage/get_storage.dart';

abstract class LocalStorageInterface {
  Future<Map<String, dynamic>> read({required String key});

  Future<List<Map<String, dynamic>>> getValues();

  Future<List<String>> getKeys();

  Future<bool> write({required String key, required Map<String, dynamic> json});

  Future<bool> writeIfNull({required String key, required Map<String, dynamic> json});

  bool hasData({required String key});

  Future<bool> clearByKey({required String key});

  Future<bool> clearAll();
}

class LocalStorage implements LocalStorageInterface {
  LocalStorage(this._storage);

  final GetStorage _storage;

  @override
  Future<bool> clearAll() async {
    try {
      await _storage.erase();
      logger.i('all data deleted from storage');
      return true;
    } on Exception catch (e) {
      logger.e('$e Unknown error occurred ');
      return false;
    }
  }

  @override
  Future<bool> clearByKey({required String key}) async {
    try {
      await _storage.remove(key);
      logger.i('$key data deleted from storage');
      return true;
    } on Exception catch (e) {
      logger.e('$e Unknown error occurred ');
      return false;
    }
  }

  @override
  bool hasData({required String key}) {
    try {
      logger.i('$key has data in the storage');
      return _storage.hasData(key);
    } on Exception catch (e) {
      logger.e('$e Unknown error occurred ');
      return false;
    }
  }

  @override
  Future<Map<String, dynamic>> read({required String key}) async {
    try {
      logger.i('$key data fetched from storage');
      return await _storage.read(key) as Map<String, dynamic>;
    } on Exception catch (e) {
      logger.e('$e Unknown error occurred ');
      throw Exception('There are no data!');
    }
  }

  @override
  Future<bool> write({required String key, required Map<String, dynamic> json}) async {
    try {
      await _storage.write(key, json);
      logger.i('all data saved to storage');
      return true;
    } on Exception catch (e) {
      logger.e('$e Unknown error occurred ');
      return false;
    }
  }

  @override
  Future<bool> writeIfNull({required String key, required Map<String, dynamic> json}) async {
    try {
      await _storage.write(key, json);
      logger.i('all data saved to storage in case if it was null');
      return true;
    } on Exception catch (e) {
      logger.e('$e Unknown error occurred ');
      return false;
    }
  }

  @override
  Future<List<String>> getKeys() async {
    try {
      logger.i('get all keys from the storage');
      return await _storage.getKeys();
    } on Exception catch (e) {
      logger.e('$e Unknown error occurred ');
      throw Exception('There are no keys!');
    }
  }

  @override
  Future<List<Map<String, dynamic>>> getValues() async {
    try {
      logger.i('fetch all data saved to storage');
      return await _storage.getValues();
    } on Exception catch (e) {
      logger.e('$e Unknown error occurred ');
      throw Exception('There are no values!');
    }
  }
}
