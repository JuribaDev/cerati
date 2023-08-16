import 'package:flutter/material.dart';

FormFieldValidator<String> englishContentValidator = (value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your English content.';
  }

  if (!isEnglishValidator(value)) {
    return 'Please enter at least 60% English content';
  }
  return null;
};

bool isEnglishValidator(String input) {
  var englishCharsCount = 0;

  for (var i = 0; i < input.length; i++) {
    // English letters are in ASCII range 65 to 90 for uppercase and 97 to 122 for lowercase
    if ((input.codeUnitAt(i) >= 65 && input.codeUnitAt(i) <= 90) ||
        (input.codeUnitAt(i) >= 97 && input.codeUnitAt(i) <= 122)) {
      englishCharsCount++;
    }
  }

  return englishCharsCount / input.length >= 0.8;
}
