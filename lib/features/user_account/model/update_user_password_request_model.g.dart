// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_password_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateUserPasswordRequestModel _$$_UpdateUserPasswordRequestModelFromJson(
        Map<String, dynamic> json) =>
    _$_UpdateUserPasswordRequestModel(
      currentPassword: json['current_password'] as String,
      newPassword: json['new_password'] as String,
    );

Map<String, dynamic> _$$_UpdateUserPasswordRequestModelToJson(
        _$_UpdateUserPasswordRequestModel instance) =>
    <String, dynamic>{
      'current_password': instance.currentPassword,
      'new_password': instance.newPassword,
    };
