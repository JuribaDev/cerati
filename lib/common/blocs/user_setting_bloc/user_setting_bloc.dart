import 'package:bloc/bloc.dart';
import 'package:cerati/common/blocs/user_setting_bloc/user_setting.dart';
import 'package:cerati/common/services/language_manager/language_manager.dart';
import 'package:flutter/material.dart';

class UserSettingBloc extends Bloc<UserSettingEvent, UserSettingState> {
  UserSettingBloc(this._userSettingManager)
      : super(UserSettingInitialState(locale: const Locale('ar'), isDark: false)) {
    on<AppStartedEvent>(_onAppStartedEvent);
    on<LanguageChangedEvent>(_onLanguageChangedEvent);
    on<ThemeModeChangedEvent>(_onThemeModeChangedEvent);
  }

  final UserSettingManager _userSettingManager;

  Future<void> _onAppStartedEvent(AppStartedEvent event, Emitter<UserSettingState> emit) async {
    final locale = await _userSettingManager.getLocal();
    final isDark = await _userSettingManager.getThemeMode();
    emit(UserSettingInitialState(locale: locale, isDark: isDark));
  }

  Future<void> _onLanguageChangedEvent(LanguageChangedEvent event, Emitter<UserSettingState> emit) async {
    await _userSettingManager.setLocale(locale: event.locale);
    emit(LocaleLoadedState(locale: event.locale));
  }

  Future<void> _onThemeModeChangedEvent(ThemeModeChangedEvent event, Emitter<UserSettingState> emit) async {
    await _userSettingManager.setThemeMode(isDark: event.isDark);
    emit(ThemeModeLoadedState(isDark: event.isDark));
  }
}
