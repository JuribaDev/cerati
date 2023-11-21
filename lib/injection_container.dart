// ignore_for_file: cascade_invocations

import 'package:cerati/core/constants/api_constants.dart';
import 'package:cerati/core/local_storage/local_storage.dart';
import 'package:cerati/core/local_storage/secure_local_storage.dart';
import 'package:cerati/core/network/interceptors/secure_interceptor.dart';
import 'package:cerati/core/network/network_manager.dart';
import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logger/logger.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies(Logger logger) async {
  ///initializations
  // GetStorage
  await GetStorage.init();

  /// Core

  // Logger
  sl.registerLazySingleton<Logger>(() => logger);
  // GetStorage
  sl.registerLazySingleton<GetStorage>(GetStorage.new);
  // LocalStorage
  sl.registerLazySingleton<LocalStorage>(() => LocalStorage(sl(), sl()));
  // Dio
  sl.registerLazySingleton<Dio>(Dio.new);
  // RetryInterceptor
  sl.registerLazySingleton<SecureInterceptor>(() => SecureInterceptor(sl())); // RetryInterceptor
  sl.registerLazySingleton<RetryInterceptor>(
      () => RetryInterceptor(dio: sl(), retries: ApiConstants.retries, retryDelays: ApiConstants.retryDelays));
  // NetworkManager
  sl.registerLazySingleton(
      () => NetworkManager(dio: sl(), baseUrl: ApiConstants.baseUrl, retryInterceptor: sl(), secureInterceptor: sl()));
  // FlutterSecureStorage
  sl.registerLazySingleton<FlutterSecureStorage>(FlutterSecureStorage.new);
  // SecureLocalStorage
  sl.registerLazySingleton<SecureLocalStorage>(() => SecureLocalStorage(sl(), sl()));

  /// Home Feature
}
