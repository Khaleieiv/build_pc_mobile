// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gpu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GPU _$$_GPUFromJson(Map<String, dynamic> json) => _$_GPU(
      id: json['id'] as int,
      gpuProducer: Producers.fromJson(json['producer'] as Map<String, dynamic>),
      name: json['name'] as String,
      gpuVendor: Producers.fromJson(json['vendor'] as Map<String, dynamic>),
      year: json['year'] as int,
      technicalProcess: json['technicalProcess'] as int,
      gpuFrequency: json['gpuFrequency'] as int,
      memoryAmount: json['memoryAmount'] as int,
      gpuMemoryType:
          GPUMemoryType.fromJson(json['memoryType'] as Map<String, dynamic>),
      memoryFrequency: json['memoryFrequency'] as int,
      bus: json['bus'] as int,
      tdp: json['tdp'] as int,
      gpuConnector: (json['connector'] as List<dynamic>)
          .map((e) => GPUConnector.fromJson(e as Map<String, dynamic>))
          .toList(),
      gpuInterfaceType: GPUInterfaceType.fromJson(
          json['interfaceType'] as Map<String, dynamic>),
      length: json['length'] as int,
      description: json['description'] as String,
      gpuTechnologies: GPUTechnologies.fromJson(
          json['gpuTechnologies'] as Map<String, dynamic>),
      recommendedPrice: json['recommendedPrice'] as int,
      performanceLevel: PerformanceLevel.fromJson(
          json['performanceLevel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GPUToJson(_$_GPU instance) => <String, dynamic>{
      'id': instance.id,
      'producer': instance.gpuProducer,
      'name': instance.name,
      'vendor': instance.gpuVendor,
      'year': instance.year,
      'technicalProcess': instance.technicalProcess,
      'gpuFrequency': instance.gpuFrequency,
      'memoryAmount': instance.memoryAmount,
      'memoryType': instance.gpuMemoryType,
      'memoryFrequency': instance.memoryFrequency,
      'bus': instance.bus,
      'tdp': instance.tdp,
      'connector': instance.gpuConnector,
      'interfaceType': instance.gpuInterfaceType,
      'length': instance.length,
      'description': instance.description,
      'gpuTechnologies': instance.gpuTechnologies,
      'recommendedPrice': instance.recommendedPrice,
      'performanceLevel': instance.performanceLevel,
    };
