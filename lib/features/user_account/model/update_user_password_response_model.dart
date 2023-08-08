import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_password_response_model.freezed.dart';

part 'update_user_password_response_model.g.dart';

@Freezed(fromJson: true)
class UpdateUserPasswordResponseModel with _$UpdateUserPasswordResponseModel {
  const factory UpdateUserPasswordResponseModel({required String message}) = _UpdateUserPasswordResponseModel;

  factory UpdateUserPasswordResponseModel.fromJson(Map<String, Object?> json) =>
      _$UpdateUserPasswordResponseModelFromJson(json);
}
