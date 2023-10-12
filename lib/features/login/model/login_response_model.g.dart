// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponseModel _$$_LoginResponseModelFromJson(Map<String, dynamic> json) => _$_LoginResponseModel(
      status: json['status'] as String,
      token: json['token'] as String,
      userAccountResponseModel: UserAccountResponseModel.fromJson(json['user']),
    );

Map<String, dynamic> _$$_LoginResponseModelToJson(_$_LoginResponseModel instance) => <String, dynamic>{
      'status': instance.status,
      'token': instance.token,
      'user': instance.userAccountResponseModel.toJson(),
    };
