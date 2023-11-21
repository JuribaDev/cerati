import 'package:cerati/common/validators/custom_validator.dart';
import 'package:cerati/common/validators/email_validator.dart';
import 'package:cerati/common/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RegisterFormWidget extends HookWidget {
  const RegisterFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final email = useTextEditingController();
    final firstName = useTextEditingController();
    final lastName = useTextEditingController();
    final password = useTextEditingController();
    final passwordConfirmation = useTextEditingController();
    final focus = useFocusNode();
    useEffect(() {
      // focus.requestFocus();

      return null;
    }, []);
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CustomTextFormField(
          controller: email,
          validator: emailValidator,
          label: 'Email',
          hintText: 'Enter',
          focusNode: focus,
        ),
        const SizedBox(
          height: 10,
        ),
        CustomTextFormField(
          controller: firstName,
          validator: customValidator('First Name'),
          label: 'First Name',
          hintText: 'Enter your first name.',
        ),
        const SizedBox(
          height: 10,
        ),
        CustomTextFormField(
          controller: lastName,
          validator: customValidator('family Name'),
          label: 'Last Name',
          hintText: 'Enter your family name.',
        ),
        const SizedBox(
          height: 10,
        ),
        CustomTextFormField(
          controller: password,
          validator: customValidator('Password'),
          label: 'Password',
          hintText: 'Enter your password.',
          secure: true,
        ),
        const SizedBox(
          height: 10,
        ),
        CustomTextFormField(
          controller: passwordConfirmation,
          validator: emailValidator,
          label: 'Password',
          hintText: 'Enter your password confirmation.',
          secure: true,
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              // if (formKey.currentState!.validate()) {}
            },
            child: const Text('Register'),
          ),
        ),
      ],
    );
  }
}
