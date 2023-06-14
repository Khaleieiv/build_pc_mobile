// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'likes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Likes _$$_LikesFromJson(Map<String, dynamic> json) => _$_Likes(
      id: json['id'] as int,
      buildPc: BuildPc.fromJson(json['buildPc'] as Map<String, dynamic>),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LikesToJson(_$_Likes instance) => <String, dynamic>{
      'id': instance.id,
      'buildPc': instance.buildPc,
      'user': instance.user,
    };
