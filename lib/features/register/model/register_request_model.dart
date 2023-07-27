// ignore: depend_on_referenced_packages
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_request_model.freezed.dart';

part 'register_request_model.g.dart';

@Freezed(toJson: true)
class RegisterRequestModel with _$RegisterRequestModel {
  const factory RegisterRequestModel({
    required String email,
    required String password,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
  }) = _RegisterModel;

  factory RegisterRequestModel.fromJson(Map<String, Object?> json) => _$RegisterRequestModelFromJson(json);
}
