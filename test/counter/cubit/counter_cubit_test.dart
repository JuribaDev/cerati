import 'package:bloc_test/bloc_test.dart';
import 'package:cerati/counter/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterCubit', () {
    test('initial state is 0', () {
      expect(PostCubit().state, equals(0));
    });

    blocTest<PostCubit, int>(
      'emits [1] when increment is called',
      build: PostCubit.new,
      act: (cubit) => cubit.increment(),
      expect: () => [equals(1)],
    );

    blocTest<PostCubit, int>(
      'emits [-1] when decrement is called',
      build: PostCubit.new,
      act: (cubit) => cubit.decrement(),
      expect: () => [equals(-1)],
    );
  });
}
