// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ssd.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ssd _$$_SsdFromJson(Map<String, dynamic> json) => _$_Ssd(
      id: json['id'] as int,
      storageProducer:
          Producers.fromJson(json['producer'] as Map<String, dynamic>),
      name: json['name'] as String,
      storageSize: json['storageSize'] as int,
      storageFormFactor: StorageFormFactor.fromJson(
          json['formFactor'] as Map<String, dynamic>),
      storageInterface: StorageInterface.fromJson(
          json['storageInterface'] as Map<String, dynamic>),
      bufferSize: json['bufferSize'] as int,
      readingSpeed: json['readingSpeed'] as int,
      writingSpeed: json['writingSpeed'] as int,
      ssdCellsType:
          SsdCellsType.fromJson(json['cellsType'] as Map<String, dynamic>),
      description: json['description'] as String,
      recommendedPrice: json['recommendedPrice'] as int,
      performanceLevel: json['performanceLevel'] == null
          ? null
          : PerformanceLevel.fromJson(
              json['performanceLevel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SsdToJson(_$_Ssd instance) => <String, dynamic>{
      'id': instance.id,
      'producer': instance.storageProducer,
      'name': instance.name,
      'storageSize': instance.storageSize,
      'formFactor': instance.storageFormFactor,
      'storageInterface': instance.storageInterface,
      'bufferSize': instance.bufferSize,
      'readingSpeed': instance.readingSpeed,
      'writingSpeed': instance.writingSpeed,
      'cellsType': instance.ssdCellsType,
      'description': instance.description,
      'recommendedPrice': instance.recommendedPrice,
      'performanceLevel': instance.performanceLevel,
    };
