import 'package:cerati/main.dart';

class ApiListResponseWrapper<T> {
  ApiListResponseWrapper({
    required this.status,
    required this.list,
    this.message,
  });

  factory ApiListResponseWrapper.fromJson(
    Map<String, dynamic> json, {
    required T Function(dynamic) fromJsonListT,
  }) {
    try {
      final data = json['data'];
      if (data is! List) throw const FormatException('Data is not a list');

      final list = data.map((i) => fromJsonListT(i)).toList();

      return ApiListResponseWrapper<T>(
        status: json['status'] as String,
        message: json['message'] as String?,
        list: list,
      );
    } catch (exception) {
      logger.e('ApiListResponseWrapper Exception: $exception');
      rethrow;
    }
  }

  final String status;
  final String? message;
  final List<T> list;
}
