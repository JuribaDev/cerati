import 'package:flutter/material.dart';

FormFieldValidator<String> arabicContentValidator = (value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your Arabic content.';
  }

  if (!isArabicValidator(value)) {
    return 'Please enter at least 60% Arabic content';
  }
  return null;
};

bool isArabicValidator(String input) {
  var arabicCharsCount = 0;

  for (var i = 0; i < input.length; i++) {
    // Arabic Unicode range from U+0600 to U+06FF
    if (input.codeUnitAt(i) >= 0x600 && input.codeUnitAt(i) <= 0x6FF) {
      arabicCharsCount++;
    }
  }

  return arabicCharsCount / input.length >= 0.6;
}
