import 'package:flutter/material.dart';

FormFieldValidator<String> arabicContentValidator = (value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your Arabic content.';
  }

  if (!isArabicValidator(value)) {
    return 'Please enter at least 70% Arabic content';
  }
  return null;
};

bool isArabicValidator(String input) {
  var arabicCharsCount = 0;
  var totalConsiderChars = 0;

  for (var i = 0; i < input.length; i++) {
    final codeUnit = input.codeUnitAt(i);
    // Check if the character is space or a common symbol or punctuation, and skip if true
    if (codeUnit == 32 ||
        (codeUnit >= 33 && codeUnit <= 47) ||
        (codeUnit >= 58 && codeUnit <= 64) ||
        (codeUnit >= 91 && codeUnit <= 96) ||
        (codeUnit >= 123 && codeUnit <= 126)) {
      continue;
    }
    totalConsiderChars++;
    if (input.codeUnitAt(i) >= 0x600 && input.codeUnitAt(i) <= 0x6FF) {
      arabicCharsCount++;
    }
  }

  return arabicCharsCount / totalConsiderChars >= 0.7;
}
