// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Rating _$$_RatingFromJson(Map<String, dynamic> json) => _$_Rating(
      id: json['id'] as int,
      like: (json['like'] as List<dynamic>)
          .map((e) => Likes.fromJson(e as Map<String, dynamic>))
          .toList(),
      buildPc: BuildPc.fromJson(json['buildPc'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RatingToJson(_$_Rating instance) => <String, dynamic>{
      'id': instance.id,
      'like': instance.like,
      'buildPc': instance.buildPc,
    };
