import 'package:cerati/common/services/datasource/api_client/api_client.dart';
import 'package:cerati/common/services/network_manager/Interceptors/secure_interceptor.dart';
import 'package:cerati/common/services/network_manager/network_manager.dart';
import 'package:cerati/core/local_storage/secure_local_storage.dart';
import 'package:cerati/core/network/network_manager.dart';
import 'package:cerati/features/login/repository/login_repository.dart';
import 'package:cerati/features/register/repository/register_repository.dart';
import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:logger/logger.dart';
import 'package:mocktail/mocktail.dart';

class MockNetworkManager extends Mock implements NetworkManager {}

class MockLogger extends Mock implements Logger {}

class MockDio extends Mock implements Dio {}

class MockSecureInterceptor extends Mock implements SecureInterceptor {}

class MockRetryInterceptor extends Mock implements RetryInterceptor {}

class MockResponse extends Mock implements Response<dynamic> {}

class MockApiClient extends Mock implements ApiClient {}

class MockRegisterRepository extends Mock implements RegisterRepository {}

class MockLoginRepository extends Mock implements LoginRepository {}

class MockSecureStorage extends Mock implements SecureLocalStorage {}

class MockFlutterSecureStorage extends Mock implements FlutterSecureStorage {}
