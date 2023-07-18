import 'package:cerati/app/app.dart';
import 'package:cerati/bootstrap.dart';
import 'package:cerati/repositories_injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await bootstrap(() {
    return multiRepositoryProvider(
      child: const App(),
    );
  });
}

Logger logger = Logger();
