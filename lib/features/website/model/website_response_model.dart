// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'website_response_model.freezed.dart';
part 'website_response_model.g.dart';

@Freezed(fromJson: true, toJson: true)
class WebsiteResponseModel with _$WebsiteResponseModel {
  const factory WebsiteResponseModel({
    required int id,
    @JsonKey(name: 'language_id') required int languageId,
    @JsonKey(name: 'language_code') required String languageCode,
    @JsonKey(name: 'language_name') required String languageName,
    @JsonKey(name: 'has_certificate') required int hasCertificate,
    @JsonKey(name: 'has_education') required int hasEducation,
    @JsonKey(name: 'has_project') required int hasProject,
    @JsonKey(name: 'has_experience') required int hasExperience,
    @JsonKey(name: 'has_skill') required int hasSkill,
    @JsonKey(name: 'has_s_m_link') required int hasSMLink,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _WebsiteResponseModel;

  factory WebsiteResponseModel.fromJson(Map<String, Object?> json) => _$WebsiteResponseModelFromJson(json);
}
