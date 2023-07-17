// ignore: depend_on_referenced_packages
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_model.freezed.dart';

part 'login_response_model.g.dart';

@Freezed(fromJson: true)
class LoginResponseModel with _$LoginResponseModel {
  const factory LoginResponseModel({
    required String status,
    required String token,
    @JsonKey(name: 'user') required UserModel userModel,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, Object?> json) => _$LoginResponseModelFromJson(json);
}

@Freezed(fromJson: true)
class UserModel with _$UserModel {
  const factory UserModel({
    required int id,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'full_name') required String fullName,
    required String email,
    required String subdomain,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) => _$UserModelFromJson(json);
}
