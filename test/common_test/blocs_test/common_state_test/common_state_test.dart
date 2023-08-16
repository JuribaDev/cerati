import 'package:cerati/common/blocs/generic_state/generic_state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CommonState', () {
    test('Initial state is created correctly', () {
      const state = CommonState.initial();
      expect(state, isA<CommonState>());
      expect(state, isInstanceOf<CommonState>());
    });

    test('Loading state is created correctly', () {
      const state = CommonState.loading();
      expect(state, isA<CommonState>());
      expect(state, isInstanceOf<CommonState>());
    });

    test('Generic state is created correctly', () {
      const errorMessage = 'Some error';
      const state = CommonState.error(errorMessage: errorMessage);
      expect(state, isA<CommonState>());
      state.maybeMap(
        error: (errorMessage) => expect(errorMessage, equals(errorMessage)),
        orElse: () => fail('Expected Error state'),
      );
    });
  });
}
