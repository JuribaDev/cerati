import 'package:cerati/common/extensions/cast_string_to_bool.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('cast String to bool', () {
    test('should return true when value is 1 or true', () {
      const result1 = '1';
      const result2 = 'true';

      expect(result1.sToBool(), true);
      expect(result2.sToBool(), true);
    });

    test('should return false when value is 0 or false', () {
      const result1 = '0';
      const result2 = 'false';

      expect(result1.sToBool(), false);
      expect(result2.sToBool(), false);
    });
    test('should throw UnsupportedError when String is not 0, 1, true or false', () {
      expect(() => '2'.sToBool(), throwsA(isA<UnsupportedError>()));
      expect(() => '-1'.sToBool(), throwsA(isA<UnsupportedError>()));
    });
  });
}
