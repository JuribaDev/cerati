import 'package:cerati/app/view/app.dart';
import 'package:cerati/app_initializer.dart';
import 'package:cerati/bootstrap.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppInitializer.initAll(Logger());
  await bootstrap(
    () => DevicePreview(
      builder: (context) => const App(), // Wrap your app
    ),
  );
}
