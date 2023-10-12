// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'website_request_model.freezed.dart';
part 'website_request_model.g.dart';

@Freezed(fromJson: true, toJson: true)
class WebsiteRequestModel with _$WebsiteRequestModel {
  const factory WebsiteRequestModel({
    @JsonKey(name: 'language_id') required int languageId,
    @JsonKey(name: 'language_code') required String languageCode,
    @JsonKey(name: 'language_name') required String languageName,
  }) = _WebsiteRequestModel;

  factory WebsiteRequestModel.fromJson(Map<String, Object?> json) => _$WebsiteRequestModelFromJson(json);
}
