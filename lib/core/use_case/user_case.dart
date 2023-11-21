import 'package:cerati/core/constants/type_devs.dart';

// ignore: one_member_abstracts
abstract class UseCase<T, Params> {
  EitherFailureOrSuccess<T> call(Params params);
}
