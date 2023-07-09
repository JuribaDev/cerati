import 'package:cerati/app/app.dart';
import 'package:cerati/bootstrap.dart';
import 'package:cerati/injection.config.dart';
import 'package:cerati/injection.dart';
import 'package:flutter/cupertino.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // getIt.init();
  // setupLocator();
  getIt.init(environment: Env.stag);
  await bootstrap(() => const App());
}
