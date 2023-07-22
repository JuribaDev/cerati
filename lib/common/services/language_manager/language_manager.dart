import 'package:cerati/common/constants/storage_constants.dart';
import 'package:cerati/common/services/datasource/local_storage/local_storage.dart';
import 'package:flutter/material.dart';

abstract class LanguageManagerInterface {
  Future<void> changeLanguage({required Locale locale});

  Future<Locale> getLocal();
}

class LanguageManager implements LanguageManagerInterface {
  LanguageManager(this._localStorage);

  final LocalStorage _localStorage;

  @override
  Future<void> changeLanguage({required Locale locale}) async {
    await _localStorage.write(key: StorageConstants.languageKey, data: locale.languageCode);
  }

  @override
  Future<Locale> getLocal() async {
    final hasData = _localStorage.hasData(key: StorageConstants.languageKey);
    final languageCode = hasData ? await _localStorage.read<String>(key: StorageConstants.languageKey) : 'ar';
    return Locale(languageCode);
  }
}
