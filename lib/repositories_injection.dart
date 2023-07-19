import 'package:cerati/common/services/datasource/api_client/api_client.dart';
import 'package:cerati/common/services/datasource/local_storage/secure_storage.dart';
import 'package:cerati/common/services/network_manager/network_manager.dart';
import 'package:cerati/features/login/repository/login_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        create: (secureLocalStorageContext) => SecureLocalStorage(),
      ),
      RepositoryProvider<LoginRepository>(
        create: (loginRepositoryContext) => LoginRepository(
          loginRepositoryContext.read<ApiClient>(),
        ),
      )
    ],
    child: child,
  );
}
