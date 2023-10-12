import 'package:cerati/common/model/api_response_wrapper.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ApiResponseWrapper', () {
    test('should create a valid instance from JSON with data', () {
      final json = {
        'status': 'success',
        'message': 'Data fetched',
        'data': {'key': 'value'}
      };

      final wrapper = ApiResponseWrapper.fromJson(
        json,
        fromJsonT: (dynamic json) => json as Map<String, String>,
      );

      expect(wrapper.status, 'success');
      expect(wrapper.message, 'Data fetched');
      expect(wrapper.data, {'key': 'value'});
    });

    test('should create a valid instance from JSON without data', () {
      final json = {'status': 'success', 'message': 'No data'};

      final wrapper = ApiResponseWrapper<String>.fromJson(json);

      expect(wrapper.status, 'success');
      expect(wrapper.message, 'No data');
      expect(wrapper.data, isNull);
    });

    test('should throw an exception if JSON is malformed', () {
      const json = 'Not a JSON';

      expect(
        () => ApiResponseWrapper<dynamic>.fromJson(json as Map<String, dynamic>),
        throwsA(anything),
      );
    });
  });
}
