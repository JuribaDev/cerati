import 'package:cerati/common/services/datasource/api_client/api_client.dart';
import 'package:cerati/common/services/datasource/local_storage/local_storage.dart';
import 'package:cerati/common/services/datasource/local_storage/secure_local_storage.dart';
import 'package:cerati/common/services/network_manager/network_manager.dart';
import 'package:cerati/common/services/user_setting_manager/user_setting_manager.dart';
import 'package:cerati/features/login/repository/login_repository.dart';
import 'package:cerati/features/user_account/repository/user_account_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_storage/get_storage.dart';

MultiRepositoryProvider multiRepositoryProvider({required Widget child}) {
  return MultiRepositoryProvider(
    providers: [
      RepositoryProvider<NetworkManager>(
        create: (networkManagerContext) => NetworkManager(
          baseUrl: 'http://localhost:8000/api/',
          dio: Dio(),
        ),
      ),
      RepositoryProvider<ApiClient>(
        create: (apiClientContext) => ApiClient(
          apiClientContext.read<NetworkManager>(),
        ),
      ),
      RepositoryProvider<SecureLocalStorage>(
        create: (secureLocalStorageContext) => SecureLocalStorage(const FlutterSecureStorage()),
      ),
      RepositoryProvider<LoginRepository>(
        create: (loginRepositoryContext) => LoginRepository(
          loginRepositoryContext.read<ApiClient>(),
        ),
      ),
      RepositoryProvider<LocalStorage>(
        create: (localStorageContext) => LocalStorage(GetStorage()),
      ),
      RepositoryProvider<UserSettingManager>(
        create: (languageManagerContext) => UserSettingManager(
          languageManagerContext.read<LocalStorage>(),
        ),
      ),
      RepositoryProvider<UserAccountRepository>(
        create: (userAccountRepositoryContext) => UserAccountRepository(
          userAccountRepositoryContext.read<ApiClient>(),
        ),
      ),
    ],
    child: child,
  );
}
