// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request_model.freezed.dart';

part 'login_request_model.g.dart';

@Freezed(toJson: true)
class LoginRequestModel with _$LoginRequestModel {
  const factory LoginRequestModel({
    required String email,
    required String password,
  }) = _LoginModel;

  factory LoginRequestModel.fromJson(Map<String, Object?> json) => _$LoginRequestModelFromJson(json);
}
