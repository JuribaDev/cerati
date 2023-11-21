// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseModelImpl _$$LoginResponseModelImplFromJson(Map<String, dynamic> json) => _$LoginResponseModelImpl(
      status: json['status'] as String,
      token: json['token'] as String,
      userAccountResponseModel: UserAccountResponseModel.fromJson(json['user']),
    );

Map<String, dynamic> _$$LoginResponseModelImplToJson(_$LoginResponseModelImpl instance) => <String, dynamic>{
      'status': instance.status,
      'token': instance.token,
      'user': instance.userAccountResponseModel.toJson(),
    };
