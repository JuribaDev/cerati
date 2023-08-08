// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_account_response_model.freezed.dart';

part 'user_account_response_model.g.dart';

@Freezed(fromJson: true, toJson: true)
class UserAccountResponseModel with _$UserAccountResponseModel {
  const factory UserAccountResponseModel({
    required int id,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'full_name') required String fullName,
    required String email,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _UserAccountResponseModel;

  factory UserAccountResponseModel.fromJson(Map<String, Object?> json) => _$UserAccountResponseModelFromJson(json);
}
