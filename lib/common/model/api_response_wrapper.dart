// ignore_for_file: invalid_annotation_target

class ApiResponseWrapper<T> {
  ApiResponseWrapper({
    required this.status,
    this.message,
    this.data,
  });

  factory ApiResponseWrapper.fromJson(Map<String, dynamic> json, {String? dataKey, T Function(dynamic)? fromJsonT}) {
    dynamic jsonData = json;
    if (dataKey != null) {
      jsonData = json[dataKey];
    }

    T? data;
    if (fromJsonT != null) {
      if (jsonData is List) {
        data = jsonData.map((item) => fromJsonT(item)).toList() as T;
      } else if (jsonData is Map) {
        data = fromJsonT(jsonData);
      }
    }

    return ApiResponseWrapper(
      status: json['status'] as String,
      message: json['message'] as String?,
      data: data,
    );
  }

  final String status;
  final String? message;
  final T? data;
}

// Generic helper function to deserialize a list of models
List<T> listFromJson<T>(List<dynamic> json, T Function(Map<String, dynamic>) fromJsonT) {
  return json.map((e) => fromJsonT(e as Map<String, dynamic>)).toList();
}
/*
class ApiResponseWrapper<T> {
  ApiResponseWrapper({
    required this.status,
    this.message,
    this.data,
  });

  factory ApiResponseWrapper.fromJson(Map<String, dynamic> json,
      {String? dataKey, T Function(dynamic)? fromJsonT}) {
    dynamic jsonData = json;
    if (dataKey != null) {
      jsonData = json[dataKey];
    }

    T? data;
    if (fromJsonT != null) {
      if (jsonData is List) {
        data = (jsonData as List)
            .map((item) => fromJsonT(item))
            .toList() as T;
      } else if (jsonData is Map) {
        data = fromJsonT(jsonData);
      }
    }

    return ApiResponseWrapper(
      status: json['status'] as String,
      message: json['message'] as String?,
      data: data,
    );
  }

  final String status;
  final String? message;
  final T? data;
}

 */
