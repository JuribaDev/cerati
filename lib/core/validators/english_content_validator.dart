import 'package:flutter/material.dart';

FormFieldValidator<String> englishContentValidator = (value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your English content.';
  }

  if (!isEnglishValidator(value)) {
    return 'Please enter at least 70% English content';
  }
  return null;
};

bool isEnglishValidator(String input) {
  var englishCharsCount = 0;
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
    // English letters are in ASCII range 65 to 90 for uppercase and 97 to 122 for lowercase
    if ((input.codeUnitAt(i) >= 65 && input.codeUnitAt(i) <= 90) ||
        (input.codeUnitAt(i) >= 97 && input.codeUnitAt(i) <= 122)) {
      englishCharsCount++;
    }
  }

  return englishCharsCount / totalConsiderChars >= 0.7;
}
