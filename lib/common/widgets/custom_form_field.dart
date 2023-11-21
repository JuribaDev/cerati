import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CustomTextFormField extends HookWidget {
  CustomTextFormField(
      {required this.controller,
      required this.label,
      this.focusNode,
      this.validator,
      this.hintText,
      this.textInputType,
      this.secure = false,
      super.key});

  TextEditingController controller;
  FocusNode? focusNode;
  FormFieldValidator<String>? validator;
  TextInputType? textInputType;
  String? hintText;
  TextInputAction? textInputAction;
  String label;
  bool secure;

  @override
  Widget build(BuildContext context) {
    final showPassword = useState<bool>(secure);
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      textInputAction: textInputAction,
      keyboardType: textInputType ?? TextInputType.text,
      validator: validator,
      obscureText: showPassword.value,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        label: Text(label),
        hintText: hintText,
        suffixIcon: secure
            ? IconButton(
                onPressed: () => showPassword.value = !showPassword.value,
                icon: Icon(showPassword.value ? Icons.visibility : Icons.visibility_off),
              )
            : null,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
