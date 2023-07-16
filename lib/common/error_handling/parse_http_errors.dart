import 'dart:io';

import 'package:dio/dio.dart';

Exception parseHttpErrors(DioException error) {
  if (error.response == null) {
    if (error.error is SocketException) {
      return NoInternetException();
    }

    if (error.error is FormatException) {
      return FormatException();
    }

    throw error;
  }

  final response = error.response!;
  final body = response.data as Map<String, dynamic>;

  switch (response.statusCode) {
    case 400:
      return BadRequest(error: body['message'].toString() ?? 'Bad Request');
    case 401:
      return UnauthorizedException();
    case 403:
      return ForbiddenException();
    case 404:
      return NotFoundError();
    case 422:
      return LaravelValidationErrors.fromJson(body);
    case 500:
      return InternalServerError(body['message'].toString() ?? 'Internal Server Error');
    case 504:
      return GatewayTimeoutException();
    default:
      return Exception('Unknown error occurred');
  }
}

abstract class HttpException implements Exception {
  String message();
}

class UnauthorizedException extends HttpException {
  @override
  String message() => 'Unauthorized';
}

class ForbiddenException extends HttpException {
  @override
  String message() => 'Forbidden';
}

class NoInternetException extends HttpException {
  @override
  String message() => 'No Internet';
}

class FormatException extends HttpException {
  @override
  String message() => 'Format Exception';
}

class NotFoundError extends HttpException {
  @override
  String message() => 'Not Found';
}

class BadRequest extends HttpException {

  BadRequest({required this.error});
  final String error;

  @override
  String message() => error;
}

class LaravelValidationErrors extends HttpException {

  LaravelValidationErrors({required this.error, required this.errors});

  factory LaravelValidationErrors.fromJson(Map<String, dynamic> json) {
    final errors = (json['errors'] as Map<String, dynamic>)
        .map((key, value) => MapEntry(key, (value as List).map((e) => e as String).toList()));


    return LaravelValidationErrors(
      error: json['message'].toString(),
      errors: errors,
    );
  }
  final String error;
  final Map<String, List<String>> errors;

  @override
  String message() => error;
}

class InternalServerError extends HttpException {

  InternalServerError(this.error);
  final String error;

  @override
  String message() => error;
}

class GatewayTimeoutException extends HttpException {
  @override
  String message() => 'Gateway Timeout';
}
