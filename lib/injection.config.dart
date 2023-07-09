// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cerati/common/services/api_client/api_client.dart' as _i6;
import 'package:cerati/common/services/network_manager/Interceptors/secoure_interceptor.dart'
    as _i4;
import 'package:cerati/common/services/network_manager/network_manager.dart'
    as _i5;
import 'package:cerati/common/services/network_manager/test/mock_network_manager.dart'
    as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

const String _test = 'test';
const String _dev = 'dev';
const String _stag = 'stag';
const String _prod = 'prod';

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final testModule = _$TestModule();
    final devModule = _$DevModule();
    final stagModule = _$StagModule();
    final prodModule = _$ProdModule();
    gh.factory<_i3.MockNetworkManager>(
      () => _i3.MockNetworkManager(),
      registerFor: {_test},
    );
    gh.factory<_i4.SecureInterceptor>(() => _i4.SecureInterceptor());
    gh.singleton<String>(
      testModule.baseUrl,
      instanceName: 'BaseUrl',
      registerFor: {_test},
    );
    gh.singleton<String>(
      devModule.baseUrl,
      instanceName: 'BaseUrl',
      registerFor: {_dev},
    );
    gh.singleton<String>(
      stagModule.baseUrl,
      instanceName: 'BaseUrl',
      registerFor: {_stag},
    );
    gh.singleton<String>(
      prodModule.baseUrl,
      instanceName: 'BaseUrl',
      registerFor: {_prod},
    );
    gh.singleton<_i5.NetworkManager>(_i5.NetworkManager(
      baseUrl: gh<String>(instanceName: 'BaseUrl'),
      secureInterceptor: gh<_i4.SecureInterceptor>(),
    ));
    gh.singleton<_i6.ApiClient>(_i6.ApiClient(gh<_i5.NetworkManager>()));
    return this;
  }
}

class _$TestModule extends _i5.TestModule {}

class _$DevModule extends _i5.DevModule {}

class _$StagModule extends _i5.StagModule {}

class _$ProdModule extends _i5.ProdModule {}
