import 'package:cerati/common/extensions/cast_int_to_bool.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('cast int to bool', () {
    test('should return true when value is 1', () {
      const result = 1;

      expect(result.iToBool(), true);
    });

    test('should return false when value is 0', () {
      const result = 0;

      expect(result.iToBool(), false);
    });
    test('should throw UnsupportedError when int is not 0 or 1', () {
      expect(() => 2.iToBool(), throwsA(isA<UnsupportedError>()));
      expect(() => (-1).iToBool(), throwsA(isA<UnsupportedError>()));
    });
  });
}
