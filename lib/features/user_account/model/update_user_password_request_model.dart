// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_password_request_model.freezed.dart';

part 'update_user_password_request_model.g.dart';

@Freezed(fromJson: true, toJson: true)
class UpdateUserPasswordRequestModel with _$UpdateUserPasswordRequestModel {
  const factory UpdateUserPasswordRequestModel({
    @JsonKey(name: 'current_password') required String currentPassword,
    @JsonKey(name: 'new_password') required String newPassword,
  }) = _UpdateUserPasswordRequestModel;

  factory UpdateUserPasswordRequestModel.fromJson(Map<String, Object?> json) =>
      _$UpdateUserPasswordRequestModelFromJson(json);
}
