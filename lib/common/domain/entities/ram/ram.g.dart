// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ram.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ram _$$_RamFromJson(Map<String, dynamic> json) => _$_Ram(
      id: json['id'] as int,
      name: json['name'] as String,
      ramProducer: Producers.fromJson(json['producer'] as Map<String, dynamic>),
      ramMemoryType:
          RamMemoryType.fromJson(json['memoryType'] as Map<String, dynamic>),
      memoryCapacity: json['memoryCapacity'] as int,
      frequency: json['frequency'] as int,
      ramTimings: json['timings'] == null
          ? null
          : RamTimings.fromJson(json['timings'] as Map<String, dynamic>),
      powerSupplyVoltage: (json['powerSupplyVoltage'] as num).toDouble(),
      description: json['description'] as String,
      recommendedPrice: json['recommendedPrice'] as int,
      performanceLevel: json['performanceLevel'] == null
          ? null
          : PerformanceLevel.fromJson(
              json['performanceLevel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RamToJson(_$_Ram instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'producer': instance.ramProducer,
      'memoryType': instance.ramMemoryType,
      'memoryCapacity': instance.memoryCapacity,
      'frequency': instance.frequency,
      'timings': instance.ramTimings,
      'powerSupplyVoltage': instance.powerSupplyVoltage,
      'description': instance.description,
      'recommendedPrice': instance.recommendedPrice,
      'performanceLevel': instance.performanceLevel,
    };
