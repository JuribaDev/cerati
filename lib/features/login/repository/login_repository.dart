import 'package:cerati/common/constants/typedevs.dart';
import 'package:cerati/common/services/datasource/api_client/api_client.dart';
import 'package:cerati/features/login/repository/login_repository_interface.dart';

class LoginRepository implements LoginRepositoryInterface {
  LoginRepository(this._apiClient);

  final ApiClient _apiClient;

  @override
  EitherSuccessOrFailure<bool> login() {
    throw UnimplementedError();
  }
}
