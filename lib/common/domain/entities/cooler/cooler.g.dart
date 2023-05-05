// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cooler.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Cooler _$$_CoolerFromJson(Map<String, dynamic> json) => _$_Cooler(
      id: json['id'] as int,
      name: json['name'] as String,
      coolerProducer: CoolerProducer.fromJson(
          json['coolerProducer'] as Map<String, dynamic>),
      coolerSocket:
          CoolerSocket.fromJson(json['coolerSocket'] as Map<String, dynamic>),
      coolerMaterial: CoolerMaterial.fromJson(
          json['coolerMaterial'] as Map<String, dynamic>),
      maxTdp: json['maxTdp'] as int,
      thermalTubes: json['thermalTubes'] as int,
      description: json['description'] as String,
      recommendedPrice: json['recommendedPrice'] as int,
      performanceLevel: PerformanceLevel.fromJson(
          json['performanceLevel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CoolerToJson(_$_Cooler instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'coolerProducer': instance.coolerProducer,
      'coolerSocket': instance.coolerSocket,
      'coolerMaterial': instance.coolerMaterial,
      'maxTdp': instance.maxTdp,
      'thermalTubes': instance.thermalTubes,
      'description': instance.description,
      'recommendedPrice': instance.recommendedPrice,
      'performanceLevel': instance.performanceLevel,
    };
