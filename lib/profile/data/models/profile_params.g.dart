// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileParams _$$_ProfileParamsFromJson(Map<String, dynamic> json) =>
    _$_ProfileParams(
      id: json['id'] as int,
      name: json['name'] as String,
      username: json['username'] as String,
      role: json['role'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$_ProfileParamsToJson(_$_ProfileParams instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'role': instance.role,
      'email': instance.email,
    };
