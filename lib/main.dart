import 'package:cerati/app/app.dart';
import 'package:cerati/bootstrap.dart';
import 'package:cerati/common/services/datasource/api_client/api_client.dart';
import 'package:cerati/common/services/datasource/local_storage/secure_storage.dart';
import 'package:cerati/common/services/network_manager/network_manager.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logger/logger.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();

  await bootstrap(() {
    return multiRepositoryProvider(
      child: const App(),
    );
  });
}

MultiRepositoryProvider multiRepositoryProvider({required Widget child}) {
  return MultiRepositoryProvider(
    providers: [
      RepositoryProvider<NetworkManager>(
        create: (networkManagerContext) => NetworkManager(
          baseUrl: dotenv.get('DEV_BASE_URL'),
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
    ],
    child: child,
  );
}

Logger logger = Logger();
