import 'package:flutter/material.dart';

FormFieldValidator<String> emailValidator = (value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your email.';
  }

  final emailValid = RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value);
  if (!emailValid) {
    return 'Please enter a valid email.';
  }
  return null;
};
