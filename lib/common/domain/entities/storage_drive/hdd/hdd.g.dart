// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hdd.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Hdd _$$_HddFromJson(Map<String, dynamic> json) => _$_Hdd(
      id: json['id'] as int,
      storageProducer:
          Producers.fromJson(json['producer'] as Map<String, dynamic>),
      name: json['name'] as String,
      storageSize: json['storageSize'] as int,
      speed: json['speed'] as int,
      storageFormFactor: StorageFormFactor.fromJson(
          json['formFactor'] as Map<String, dynamic>),
      storageInterface: StorageInterface.fromJson(
          json['storageInterface'] as Map<String, dynamic>),
      bufferSize: json['bufferSize'] as int,
      readingSpeed: json['readingSpeed'] as int,
      writingSpeed: json['writingSpeed'] as int,
      description: json['description'] as String,
      recommendedPrice: json['recommendedPrice'] as int,
      performanceLevel: json['performanceLevel'] == null
          ? null
          : PerformanceLevel.fromJson(
              json['performanceLevel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_HddToJson(_$_Hdd instance) => <String, dynamic>{
      'id': instance.id,
      'producer': instance.storageProducer,
      'name': instance.name,
      'storageSize': instance.storageSize,
      'speed': instance.speed,
      'formFactor': instance.storageFormFactor,
      'storageInterface': instance.storageInterface,
      'bufferSize': instance.bufferSize,
      'readingSpeed': instance.readingSpeed,
      'writingSpeed': instance.writingSpeed,
      'description': instance.description,
      'recommendedPrice': instance.recommendedPrice,
      'performanceLevel': instance.performanceLevel,
    };
