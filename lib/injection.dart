import 'package:cerati/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

GetIt getIt = GetIt.instance;

@InjectableInit()
GetIt configInjector(
  GetIt getIt, {
  String? env,
  EnvironmentFilter? environmentFilter,
}) {
  return getIt.init(
    environmentFilter: environmentFilter,
    environment: env,
  );
}

abstract class Env {
  static const test = 'test';
  static const dev = 'dev';
  static const stag = 'stag';
  static const prod = 'prod';
}
