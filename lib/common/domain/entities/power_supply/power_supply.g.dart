// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'power_supply.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PowerSupply _$$_PowerSupplyFromJson(Map<String, dynamic> json) =>
    _$_PowerSupply(
      id: json['id'] as int,
      powerSupplyProducer:
          Producers.fromJson(json['producer'] as Map<String, dynamic>),
      name: json['name'] as String,
      power: json['power'] as int,
      formFactor:
          FormFactor.fromJson(json['formFactor'] as Map<String, dynamic>),
      performanceLevel: json['performanceLevel'] == null
          ? null
          : PerformanceLevel.fromJson(
              json['performanceLevel'] as Map<String, dynamic>),
      pfcModule: json['pfcModule'] as bool,
      modularConnection: json['modularConnection'] as bool,
      powerSupplyProtectionFunctions: (json['protection'] as List<dynamic>)
          .map((e) => PowerSupplyProtectionFunctions.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      cpu_4pin: json['cpu_4pin'] as int,
      cpu_4plus4pin: json['cpu_4plus4pin'] as int,
      cpu_8pin: json['cpu_8pin'] as int,
      pcie_6plus2pin: json['pcie_6plus2pin'] as int,
      pcie_8pin: json['pcie_8pin'] as int,
      pcie_5_16pin: json['pcie_5_16pin'] as int,
      sata: json['sata'] as int,
      count_of_12_v_lines: json['count_of_12_v_lines'] as int,
      description: json['description'] as String,
      recommendedPrice: json['recommendedPrice'] as int,
    );

Map<String, dynamic> _$$_PowerSupplyToJson(_$_PowerSupply instance) =>
    <String, dynamic>{
      'id': instance.id,
      'producer': instance.powerSupplyProducer,
      'name': instance.name,
      'power': instance.power,
      'formFactor': instance.formFactor,
      'performanceLevel': instance.performanceLevel,
      'pfcModule': instance.pfcModule,
      'modularConnection': instance.modularConnection,
      'protection': instance.powerSupplyProtectionFunctions,
      'cpu_4pin': instance.cpu_4pin,
      'cpu_4plus4pin': instance.cpu_4plus4pin,
      'cpu_8pin': instance.cpu_8pin,
      'pcie_6plus2pin': instance.pcie_6plus2pin,
      'pcie_8pin': instance.pcie_8pin,
      'pcie_5_16pin': instance.pcie_5_16pin,
      'sata': instance.sata,
      'count_of_12_v_lines': instance.count_of_12_v_lines,
      'description': instance.description,
      'recommendedPrice': instance.recommendedPrice,
    };
