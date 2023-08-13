import 'package:cerati/common/error_handling/failure.dart';
import 'package:cerati/common/utils/either.dart';

typedef EitherSuccessOrFailure<T> = Future<Either<Failure, T>>;
