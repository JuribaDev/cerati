// ignore_for_file: invalid_annotation_target

import 'package:cerati/features/user_account/model/user_account_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_model.freezed.dart';

part 'login_response_model.g.dart';

@Freezed(fromJson: true, toJson: true)
class LoginResponseModel with _$LoginResponseModel {
  const factory LoginResponseModel({
    required String status,
    required String token,
    @JsonKey(name: 'user', includeToJson: true) required UserAccountResponseModel userAccountResponseModel,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, Object?> json) => _$LoginResponseModelFromJson(json);
}
