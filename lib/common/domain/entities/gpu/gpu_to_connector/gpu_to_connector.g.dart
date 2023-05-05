// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gpu_to_connector.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GPUToConnector _$$_GPUToConnectorFromJson(Map<String, dynamic> json) =>
    _$_GPUToConnector(
      id: json['id'] as int,
      gpu: GPU.fromJson(json['gpu'] as Map<String, dynamic>),
      gpuConnector:
          GPUConnector.fromJson(json['gpuConnector'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GPUToConnectorToJson(_$_GPUToConnector instance) =>
    <String, dynamic>{
      'id': instance.id,
      'gpu': instance.gpu,
      'gpuConnector': instance.gpuConnector,
    };
