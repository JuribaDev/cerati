import 'package:cerati/common/constants/api_contstants.dart';
import 'package:cerati/common/constants/typedevs.dart';
import 'package:cerati/common/services/datasource/api_client/api_client_interface.dart';
import 'package:cerati/common/services/network_manager/network_manager.dart';

class ApiClient implements ApiClientInterface {
  ApiClient(this._networkManager);

  final NetworkManager _networkManager;
  final ApiConstants _apiConstants = ApiConstants();

  @override
  EitherSuccessOrFailure<bool> register(String email, String password) {
    // TODO: implement register
    throw UnimplementedError();
  }

  @override
  EitherSuccessOrFailure<bool> login(String email, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }
}

class Failure extends Error {
  Failure({required this.message, required this.statusCode});

  final String message;
  final int statusCode;
}
