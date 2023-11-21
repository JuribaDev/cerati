import 'package:flutter/material.dart';

FormFieldValidator<String> customValidator(String name) => (value) {
      if (value == null || value.isEmpty) return 'Please enter your $name.';

      if (value.length <= 3) return 'The length of $name should be more than 3 characters.';
      return null;
    };
