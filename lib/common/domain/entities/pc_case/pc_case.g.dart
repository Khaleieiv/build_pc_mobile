// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pc_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PcCase _$$_PcCaseFromJson(Map<String, dynamic> json) => _$_PcCase(
      id: json['id'] as int,
      name: json['name'] as String,
      caseProducer:
          Producers.fromJson(json['caseProducer'] as Map<String, dynamic>),
      caseSize: CaseSize.fromJson(json['caseSize'] as Map<String, dynamic>),
      formFactor: (json['formFactor'] as List<dynamic>)
          .map((e) => FormFactor.fromJson(e as Map<String, dynamic>))
          .toList(),
      casePowerSupplyLocation: CasePowerSupplyLocation.fromJson(
          json['casePowerSupplyLocation'] as Map<String, dynamic>),
      fansIncluded: json['fansIncluded'] as bool,
      usb_3_2: json['usb_3_2'] as int,
      usb_3_0: json['usb_3_0'] as int,
      usb_2_0: json['usb_2_0'] as int,
      designFeatures: (json['designFeatures'] as List<dynamic>)
          .map((e) => CaseDesignFeatures.fromJson(e as Map<String, dynamic>))
          .toList(),
      maxLengthOfGraphicCard: json['maxLengthOfGraphicCard'] as int,
      description: json['description'] as String,
      recommendedPrice: json['recommendedPrice'] as int,
      performanceLevel: json['performanceLevel'] == null
          ? null
          : PerformanceLevel.fromJson(
              json['performanceLevel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PcCaseToJson(_$_PcCase instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'caseProducer': instance.caseProducer,
      'caseSize': instance.caseSize,
      'formFactor': instance.formFactor,
      'casePowerSupplyLocation': instance.casePowerSupplyLocation,
      'fansIncluded': instance.fansIncluded,
      'usb_3_2': instance.usb_3_2,
      'usb_3_0': instance.usb_3_0,
      'usb_2_0': instance.usb_2_0,
      'designFeatures': instance.designFeatures,
      'maxLengthOfGraphicCard': instance.maxLengthOfGraphicCard,
      'description': instance.description,
      'recommendedPrice': instance.recommendedPrice,
      'performanceLevel': instance.performanceLevel,
    };
