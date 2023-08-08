// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_account_request_model.freezed.dart';

part 'update_user_account_request_model.g.dart';

@Freezed(fromJson: true, toJson: true)
class UpdateUserAccountRequestModel with _$UpdateUserAccountRequestModel {
  const factory UpdateUserAccountRequestModel({
    required int id,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String email,
  }) = _UpdateUserAccountRequestModel;

  factory UpdateUserAccountRequestModel.fromJson(Map<String, Object?> json) =>
      _$UpdateUserAccountRequestModelFromJson(json);
}
