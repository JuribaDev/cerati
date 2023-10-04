import 'package:cerati/common/error_handling/failure.dart';
import 'package:cerati/common/model/api_response_wrapper.dart';
import 'package:cerati/common/utils/either.dart';

typedef EitherFailureOrSuccess<T> = Future<Either<Failure, T>>;
typedef EitherFailureOrSuccessWithWrapper<T> = Future<Either<Failure, ApiResponseWrapper<T>>>;
