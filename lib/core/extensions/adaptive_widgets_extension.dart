import 'dart:io';

import 'package:flutter/material.dart';

extension AdaptiveWidgets on Widget {
  TextInputAction get textInputAction => Platform.isIOS ? TextInputAction.continueAction : TextInputAction.done;
}
