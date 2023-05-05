// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cpu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CPU _$$_CPUFromJson(Map<String, dynamic> json) => _$_CPU(
      id: json['id'] as int,
      name: json['name'] as String,
      cpuProducer:
          CPUProducer.fromJson(json['cpuProducer'] as Map<String, dynamic>),
      yearOfRelease: json['yearOfRelease'] as int,
      motherboardSocket: MotherboardSocket.fromJson(
          json['motherboardSocket'] as Map<String, dynamic>),
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
      cpuPcieVersion: CPUPcieVersion.fromJson(
          json['cpuPcieVersion'] as Map<String, dynamic>),
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_CPUToJson(_$_CPU instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cpuProducer': instance.cpuProducer,
      'yearOfRelease': instance.yearOfRelease,
      'motherboardSocket': instance.motherboardSocket,
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
      'cpuPcieVersion': instance.cpuPcieVersion,
      'description': instance.description,
    };
