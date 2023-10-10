import 'package:cerati/common/model/api_list_response_wrapper.dart';
import 'package:test/test.dart';

void main() {
  group('ApiListResponseWrapper', () {
    test('should create a valid instance from JSON', () {
      final json = {
        'status': 'success',
        'message': 'Fetched successfully',
        'data': [1, 2, 3]
      };
      final wrapper = ApiListResponseWrapper<int>.fromJson(
        json,
        fromJsonListT: (dynamic item) => item as int,
      );

      expect(wrapper.status, 'success');
      expect(wrapper.message, 'Fetched successfully');
      expect(wrapper.list, [1, 2, 3]);
    });

    test('should throw FormatException if data is not a list', () {
      final json = {'status': 'success', 'message': 'Fetched successfully', 'data': 'not_a_list'};

      expect(
        () => ApiListResponseWrapper.fromJson(
          json,
          fromJsonListT: (dynamic item) => item as int,
        ),
        throwsA(isA<FormatException>()),
      );
    });

    test('should handle null message gracefully', () {
      final json = {
        'status': 'success',
        'data': [1, 2, 3]
      };
      final wrapper = ApiListResponseWrapper.fromJson(
        json,
        fromJsonListT: (dynamic item) => item as int,
      );

      expect(wrapper.status, 'success');
      expect(wrapper.message, isNull);
      expect(wrapper.list, [1, 2, 3]);
    });
  });
}
