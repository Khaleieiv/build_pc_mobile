// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cpu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CPU _$$_CPUFromJson(Map<String, dynamic> json) => _$_CPU(
      id: json['id'] as int,
      name: json['name'] as String,
      producer: json['producer'] == null
          ? null
          : Producers.fromJson(json['producer'] as Map<String, dynamic>),
      yearOfRelease: json['yearOfRelease'] as int,
      socket: json['socket'] == null
          ? null
          : MotherboardSocket.fromJson(json['socket'] as Map<String, dynamic>),
      countOfCores: json['countOfCores'] as int,
      countOfThreads: json['countOfThreads'] as int,
      baseFrequency: json['baseFrequency'] as int,
      turboFrequency: json['turboFrequency'] as int,
      l3Cache: json['l3Cache'] as int,
      cpuGeneration:
          CPUGeneration.fromJson(json['cpuGeneration'] as Map<String, dynamic>),
      technicalProcess: json['technicalProcess'] as int,
      tdp: json['tdp'] as int,
      maxTemperature: json['maxTemperature'] as int,
      embeddedGraphic: json['embeddedGraphic'] as bool,
      cpuPcieVersion: json['pcieVersion'] == null
          ? null
          : CPUPcieVersion.fromJson(
              json['pcieVersion'] as Map<String, dynamic>),
      cpuTech: (json['cpuTech'] as List<dynamic>)
          .map((e) =>
              e == null ? null : CPUTech.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String,
      recommendedPrice: json['recommendedPrice'] as int,
      performanceLevel: json['performanceLevel'] == null
          ? null
          : PerformanceLevel.fromJson(
              json['performanceLevel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CPUToJson(_$_CPU instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'producer': instance.producer,
      'yearOfRelease': instance.yearOfRelease,
      'socket': instance.socket,
      'countOfCores': instance.countOfCores,
      'countOfThreads': instance.countOfThreads,
      'baseFrequency': instance.baseFrequency,
      'turboFrequency': instance.turboFrequency,
      'l3Cache': instance.l3Cache,
      'cpuGeneration': instance.cpuGeneration,
      'technicalProcess': instance.technicalProcess,
      'tdp': instance.tdp,
      'maxTemperature': instance.maxTemperature,
      'embeddedGraphic': instance.embeddedGraphic,
      'pcieVersion': instance.cpuPcieVersion,
      'cpuTech': instance.cpuTech,
      'description': instance.description,
      'recommendedPrice': instance.recommendedPrice,
      'performanceLevel': instance.performanceLevel,
    };
