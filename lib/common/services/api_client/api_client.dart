import 'package:cerati/common/services/network_manager/network_manager.dart';
import 'package:cerati/common/utils/either.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class ApiClient {
  ApiClient(this.networkManager);

  final NetworkManager networkManager;

  Future<Either<String, bool>> fetchPost() async {
    final response = await networkManager.dio.get('posts/1');
    try {
      return Left(response.toString());
    } on DioException catch (e) {
      return const Right(false);
    }
  }
}
