import 'dart:async';

import 'package:cerati/app/app.dart';
import 'package:cerati/bootstrap.dart';

// import 'package:cerati/injection.config.dart';

// GetIt getIt = GetIt.instance;

Future<void> main() async {
  // await getIt.init(environment: Env.prod);
  unawaited(bootstrap(() => const App()));
}
