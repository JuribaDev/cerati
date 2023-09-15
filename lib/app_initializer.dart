// ignore_for_file: inference_failure_on_instance_creation

import 'package:cerati/main.dart';
import 'package:get_storage/get_storage.dart';

class AppInitializer {
  static Future<void> initAll() async {
    await _initGetStorage();
  }

  static Future<void> _initGetStorage() async {
    var retryCount = 0;
    const baseDelay = 2;
    try {
      while (retryCount < 3) {
        try {
          await GetStorage.init();
          break;
        } catch (e) {
          logger.e('Specific error occurred in GetStorage: $e');
        }

        final delay = baseDelay * (1 << retryCount);
        await Future.delayed(Duration(seconds: delay));
        retryCount++;
      }
    } catch (e) {
      logger.e('Failed to initialize GetStorage even after maximum retries: $e');
      //ToDo Consider using backup locale storage library
    }
  }
}
