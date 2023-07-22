import 'package:flutter/material.dart';

abstract class LanguageEvent {}

class LanguageChanged extends LanguageEvent {
  LanguageChanged({required this.locale});

  final Locale locale;
}

class AppStarted extends LanguageEvent {}
