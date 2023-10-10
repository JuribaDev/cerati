import 'package:cerati/main.dart';

class ApiResponseWrapper<T> {
  ApiResponseWrapper({
    required this.status,
    this.message,
    this.data,
  });

  factory ApiResponseWrapper.fromJson(
    Map<String, dynamic> json, {
    T Function(dynamic)? fromJsonT,
  }) {
    T? data;
    try {
      final jsonData = json['data'];
      if (fromJsonT != null && jsonData is Map<String, dynamic>) {
        data = fromJsonT(jsonData);
      }

      return ApiResponseWrapper(
        status: json['status'] as String,
        message: json['message'] as String?,
        data: data,
      );
    } catch (e) {
      logger.e('Error in ApiResponseWrapper: $e');
      rethrow;
    }
  }

  final String status;
  final String? message;
  final T? data;
}
