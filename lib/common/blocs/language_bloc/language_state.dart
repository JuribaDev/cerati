import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class LanguageState extends Equatable {
  factory LanguageState.loading() => const LanguageState._(locale: Locale('ar'));

  factory LanguageState.loaded({required Locale locale}) => LanguageState._(locale: locale);

  const LanguageState._({required this.locale});

  final Locale locale;

  @override
  List<Object?> get props => [locale];
}