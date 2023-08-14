import 'package:cerati/common/error_handling/failure.dart';
import 'package:cerati/common/utils/either.dart';

typedef EitherFailureOrSuccess<T> = Future<Either<Failure, T>>;
