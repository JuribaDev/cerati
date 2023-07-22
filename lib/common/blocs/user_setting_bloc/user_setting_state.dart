import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class UserSettingState extends Equatable {
  @override
  List<Object?> get props => [];
}

class UserSettingInitialState extends UserSettingState {
  UserSettingInitialState({required this.locale, required this.isDark});

  final Locale locale;
  final bool isDark;
}

class LocaleLoadedState extends UserSettingState {
  LocaleLoadedState({required this.locale});

  final Locale locale;
}

class ThemeModeLoadedState extends UserSettingState {
  ThemeModeLoadedState({required this.isDark});

  final bool isDark;
}
