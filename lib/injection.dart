import 'package:cerati/injection.config.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
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

//Todo update the base url.
@module
abstract class TestModule {
  @Named('BaseUrl')
  @Singleton(env: [Env.test])
  String get baseUrl => dotenv.env['DEV_BASE_URL']!;
}

@module
abstract class DevModule {
  @Named('BaseUrl')
  @Singleton(env: [Env.dev])
  String get baseUrl => dotenv.env['DEV_BASE_URL']!;
}

@module
abstract class StagModule {
  @Named('BaseUrl')
  @Singleton(env: [Env.stag])
  String get baseUrl => dotenv.env['DEV_BASE_URL']!;
}

@module
abstract class ProdModule {
  @Named('BaseUrl')
  @Singleton(env: [Env.prod])
  String get baseUrl => dotenv.env['DEV_BASE_URL']!;
}
