// Mock ApiClient
import 'package:cerati/common/services/datasource/api_client/api_client.dart';
import 'package:cerati/common/services/network_manager/network_manager.dart';
import 'package:cerati/features/login/repository/login_repository.dart';
import 'package:cerati/features/register/repository/register_repository.dart';
import 'package:cerati/features/user_account/repository/user_account_repository.dart';
import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';

class MockApiClient extends Mock implements ApiClient {}

class MockRegisterRepository extends Mock implements RegisterRepository {}

class MockLoginRepository extends Mock implements LoginRepository {}

class MockNetworkManager extends Mock implements NetworkManager {}

class MockDio extends Mock implements Dio {}

class MockResponse extends Mock implements Response<dynamic> {}

class MockUserAccountRepository extends Mock implements UserAccountRepository {}
