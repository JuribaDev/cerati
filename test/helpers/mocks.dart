// Mock ApiClient
import 'package:cerati/common/services/datasource/api_client/api_client.dart';
import 'package:cerati/features/login/repository/login_repository.dart';
import 'package:cerati/features/register/repository/register_repository.dart';
import 'package:mocktail/mocktail.dart';

class MockApiClient extends Mock implements ApiClient {}

class MockRegisterRepository extends Mock implements RegisterRepository {}

class MockLoginRepository extends Mock implements LoginRepository {}
