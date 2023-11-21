import 'package:cerati/common/constants/typedevs.dart';

// ignore: one_member_abstracts
abstract class UseCase<T, Params> {
  EitherFailureOrSuccess<T> call(Params params);
}
