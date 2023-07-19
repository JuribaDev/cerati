import 'package:cerati/common/services/datasource/api_client/api_client.dart';
import 'package:cerati/common/utils/either.dart';

typedef EitherSuccessOrFailure<T> = Future<Either<Failure, T>>;
