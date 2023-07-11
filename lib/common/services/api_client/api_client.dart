import 'package:cerati/common/services/network_manager/network_manager.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class ApiClient {
  ApiClient(this.networkManager);

  final NetworkManager networkManager;

}
