// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_password_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateUserPasswordRequestModelImpl
    _$$UpdateUserPasswordRequestModelImplFromJson(Map<String, dynamic> json) =>
        _$UpdateUserPasswordRequestModelImpl(
          currentPassword: json['current_password'] as String,
          newPassword: json['new_password'] as String,
        );

Map<String, dynamic> _$$UpdateUserPasswordRequestModelImplToJson(
        _$UpdateUserPasswordRequestModelImpl instance) =>
    <String, dynamic>{
      'current_password': instance.currentPassword,
      'new_password': instance.newPassword,
    };
