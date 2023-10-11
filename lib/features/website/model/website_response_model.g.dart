// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'website_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WebsiteResponseModel _$$_WebsiteResponseModelFromJson(Map<String, dynamic> json) => _$_WebsiteResponseModel(
      id: json['id'] as int,
      languageId: json['language_id'] as int,
      languageCode: json['language_code'] as String,
      languageName: json['language_name'] as String,
      hasCertificate: json['has_certificate'] as bool,
      hasEducation: json['has_education'] as bool,
      hasProject: json['has_project'] as bool,
      hasExperience: json['has_experience'] as bool,
      hasSkill: json['has_skill'] as bool,
      hasSMLink: json['has_s_m_link'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_WebsiteResponseModelToJson(_$_WebsiteResponseModel instance) => <String, dynamic>{
      'id': instance.id,
      'language_id': instance.languageId,
      'language_code': instance.languageCode,
      'language_name': instance.languageName,
      'has_certificate': instance.hasCertificate,
      'has_education': instance.hasEducation,
      'has_project': instance.hasProject,
      'has_experience': instance.hasExperience,
      'has_skill': instance.hasSkill,
      'has_s_m_link': instance.hasSMLink,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
