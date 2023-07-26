import 'package:cerati/common/constants/storage_constants.dart';
import 'package:cerati/common/services/datasource/local_storage/local_storage.dart';
import 'package:flutter/material.dart';

abstract class UserSettingManagerInterface {
  Future<void> setLocale({required Locale locale});

  Future<Locale> getLocal();

  Future<void> setThemeMode({required bool isDark});

  Future<String> getThemeMode();
}

class UserSettingManager implements UserSettingManagerInterface {
  UserSettingManager(this._localStorage);

  final LocalStorage _localStorage;

  @override
  Future<void> setLocale({required Locale locale}) async {
    await _localStorage.write(key: StorageConstants.languageKey, data: locale.languageCode);
  }

  @override
  Future<Locale> getLocal() async {
    final hasData = _localStorage.hasData(key: StorageConstants.languageKey);
    final languageCode = hasData ? await _localStorage.read<String>(key: StorageConstants.languageKey) : 'ar';
    return Locale(languageCode);
  }

  @override
  Future<String> getThemeMode() async {
    final hasData = _localStorage.hasData(key: StorageConstants.themeModeKey);
    final isDark = hasData ? await _localStorage.read<String>(key: StorageConstants.themeModeKey) : 'false';

    return isDark;
  }

  @override
  Future<void> setThemeMode({required bool isDark}) async {
    await _localStorage.write(key: StorageConstants.themeModeKey, data: (!isDark).toString());
  }
}
