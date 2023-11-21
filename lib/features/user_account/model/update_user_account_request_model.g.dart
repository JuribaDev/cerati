// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_account_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateUserAccountRequestModelImpl _$$UpdateUserAccountRequestModelImplFromJson(Map<String, dynamic> json) =>
    _$UpdateUserAccountRequestModelImpl(
      id: json['id'] as int,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$UpdateUserAccountRequestModelImplToJson(_$UpdateUserAccountRequestModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
    };
