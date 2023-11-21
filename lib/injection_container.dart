// ignore_for_file: cascade_invocations

import 'package:cerati/common/services/network_manager/Interceptors/secure_interceptor.dart';
import 'package:cerati/core/constants/network.dart';
import 'package:cerati/core/local_storage/local_storage.dart';
import 'package:cerati/core/local_storage/secure_local_storage.dart';
import 'package:cerati/core/network/network_manager.dart';
import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logger/logger.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies(Logger logger) async {
  // Logger
  sl.registerSingleton<Logger>(logger);
  // Dio
  sl.registerSingleton<Dio>(Dio());
  // RetryInterceptor
  sl.registerSingleton<SecureInterceptor>(SecureInterceptor()); // RetryInterceptor
  sl.registerSingleton<RetryInterceptor>(RetryInterceptor(dio: sl(), retries: retries, retryDelays: retryDelays));
  // NetworkManager
  sl.registerSingleton(NetworkManager(dio: sl(), baseUrl: baseUrl, retryInterceptor: sl(), secureInterceptor: sl()));
  // GetStorage
  sl.registerSingleton<GetStorage>(GetStorage());
  // LocalStorage
  sl.registerSingleton<LocalStorage>(LocalStorage(sl(), sl()));
  // FlutterSecureStorage
  sl.registerSingleton<FlutterSecureStorage>(const FlutterSecureStorage());
  // SecureLocalStorage
  sl.registerSingleton<SecureLocalStorage>(SecureLocalStorage(sl(), sl()));

  /// Most Viewed Articles Feature
  // ArticleRemoteDataSource
  // ArticleRepository
  sl.registerSingleton<ArticleRepositoryInterface>(ArticleRepositoryImp(
    sl(),
  ));
  // GetMostViewedArticles Use Case
  sl.registerSingleton<GetMostViewedArticlesUseCase>(GetMostViewedArticlesUseCase(
    sl(),
  ));

  // GetMostViewedArticles Bloc
  sl.registerFactory<MostViewedArticleBloc>(() => MostViewedArticleBloc(sl()));
}
