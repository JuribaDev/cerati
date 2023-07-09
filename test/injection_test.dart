import 'package:cerati/common/services/network_manager/network_manager.dart';
import 'package:cerati/common/services/network_manager/test/mock_network_manager.dart';
import 'package:cerati/injection.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('All unit test for Injection file', () {
    test('Initialization in test environment', () {
      getIt.reset();
      configInjector(getIt, env: Env.test);
      expect(getIt.isRegistered<MockNetworkManager>(), true);
    });

    test('Initialization in dev environment', () {
      getIt.reset();
      configInjector(getIt, env: Env.dev);
      expect(getIt.isRegistered<NetworkManager>(), true);
    });

    test('Initialization in stag environment', () {
      getIt.reset();
      configInjector(getIt, env: Env.stag);
      expect(getIt.isRegistered<NetworkManager>(), true);
    });

    test('Initialization in prod environment', () {
      getIt.reset();
      configInjector(getIt, env: Env.prod);
      expect(getIt.isRegistered<NetworkManager>(), true);
    });
  });
}
