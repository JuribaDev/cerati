import 'package:cerati/common/utils/either.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const leftValue = 'Left Value';
  const rightValue = 'Right Value';
  const left = Left<String, dynamic>(leftValue);
  const right = Right<dynamic, String>(rightValue);
  setUp(() {});

  test('Either should return Left as String and Right as bool with correct values', () {
    testEither(isLeft: true).fold((left) {
      expect(left, 'Juriba');
    }, (right) {
      expect(right, true);
    });
  });

  test('Left should return correct isLeft and isRight values', () {
    expect(left.isLeft, true);
    expect(left.isRight, false);
  });

  test('Right should return correct isLeft and isRight values', () {
    expect(right.isLeft, false);
    expect(right.isRight, true);
  });

  test('Left should return correct value', () {
    expect(left.left, leftValue);
    expect(() => left.right, throwsException);
  });

  test('Right should return correct value', () {
    expect(right.right, rightValue);
    expect(() => right.left, throwsException);
  });

  test('fold should return correct value', () {
    expect(left.fold((l) => l, (r) => r), leftValue);
    expect(right.fold((l) => l, (r) => r), rightValue);
  });

  test('mapLeft should correctly transform Left', () {
    const transformedValue = 'Transformed Left Value';
    final transformed = left.mapLeft((l) => transformedValue);
    expect(transformed.isLeft, true);
    expect(transformed.left, transformedValue);
  });

  test('map should correctly transform Right', () {
    const transformedValue = 'Transformed Right Value';
    final transformed = right.map((r) => transformedValue);
    expect(transformed.isRight, true);
    expect(transformed.right, transformedValue);
  });

  test('flatMap should correctly transform Right', () {
    const transformedValue = 'Transformed Right Value';
    final transformed = right.flatMap((r) => const Right<dynamic, String>(transformedValue));
    expect(transformed.isRight, true);
    expect(transformed.right, transformedValue);
  });
}

Either<String, bool> testEither({required bool isLeft}) {
  if (isLeft) {
    return const Left('Juriba');
  } else {
    return const Right(true);
  }
}
