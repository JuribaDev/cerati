import 'package:cerati/common/services/network_manager/network_manager.dart';
import 'package:cerati/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:mocktail/mocktail.dart';

@Injectable(env: [Env.test])
class MockNetworkManager extends Mock implements NetworkManager {}
