// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request_model.freezed.dart';

part 'login_request_model.g.dart';

@Freezed(fromJson: true)
class LoginRequestModel with _$LoginModel {
  const factory LoginRequestModel({
    @JsonKey(name: 'email') required String email,
    required String password,
  }) = _LoginModel;

  factory LoginRequestModel.fromJson(Map<String, Object?> json) => _$LoginModelFromJson(json);
}
