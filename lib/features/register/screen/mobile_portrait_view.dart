import 'package:cerati/features/register/screen/widgets/register_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MobilePortraitView extends HookWidget {
  const MobilePortraitView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 10, left: 16, right: 16, bottom: 30),
      child: RegisterFormWidget(),
    );
  }
}
