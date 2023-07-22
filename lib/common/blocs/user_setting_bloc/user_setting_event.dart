import 'package:flutter/material.dart';

abstract class UserSettingEvent {}

class LanguageChangedEvent extends UserSettingEvent {
  LanguageChangedEvent({required this.locale});

  final Locale locale;
}

class ThemeModeChangedEvent extends UserSettingEvent {
  ThemeModeChangedEvent({required this.isDark});

  final bool isDark;
}

class AppStartedEvent extends UserSettingEvent {}
