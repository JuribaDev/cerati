import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class UserSettingState extends Equatable {
  factory UserSettingState.loading() => const UserSettingState._(locale: Locale('ar'), isDark: false);

  factory UserSettingState.loaded({required Locale locale, required bool isDark}) =>
      UserSettingState._(locale: locale, isDark: isDark);

  const UserSettingState._({required this.locale, required this.isDark});

  final Locale locale;
  final bool isDark;

  @override
  List<Object?> get props => [locale, isDark];
}
