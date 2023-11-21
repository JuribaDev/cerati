import 'package:cerati/core/error_handling/failure.dart';
import 'package:cerati/core/utils/either.dart';

typedef EitherFailureOrSuccess<T> = Future<Either<Failure, T>>;
