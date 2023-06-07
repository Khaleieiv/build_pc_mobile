// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'motherboard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Motherboard _$$_MotherboardFromJson(Map<String, dynamic> json) =>
    _$_Motherboard(
      id: json['id'] as int,
      name: json['name'] as String,
      socket:
          MotherboardSocket.fromJson(json['socket'] as Map<String, dynamic>),
      cpuGenerations: (json['cpuGenerations'] as List<dynamic>)
          .map((e) => CPUGeneration.fromJson(e as Map<String, dynamic>))
          .toList(),
      motherboardChipset: MotherboardChipset.fromJson(
          json['motherboardChipset'] as Map<String, dynamic>),
      formFactor:
          FormFactor.fromJson(json['formFactor'] as Map<String, dynamic>),
      motherboardProducer: Producers.fromJson(
          json['motherboardProducer'] as Map<String, dynamic>),
      maxTdpOfProcessors: json['maxTdpOfProcessors'] as int,
      memorySlots: json['memorySlots'] as int,
      supportedMemoryFrequency: json['supportedMemoryFrequency'] as int,
      maxAmountOfRam: json['maxAmountOfRam'] as int,
      motherboardNetwork: MotherboardNetwork.fromJson(
          json['motherboardNetwork'] as Map<String, dynamic>),
      bluetooth: json['bluetooth'] as bool,
      wifi: json['wifi'] as bool,
      cpuPcieVersion: CPUPcieVersion.fromJson(
          json['cpuPcieVersion'] as Map<String, dynamic>),
      pci_express_x16: json['pci_express_x16'] as int,
      pci_express_x4: json['pci_express_x4'] as int,
      pci_express_x1: json['pci_express_x1'] as int,
      sata3: json['sata3'] as int,
      m2: json['m2'] as int,
      dSub: json['dSub'] as bool,
      dvi: json['dvi'] as int,
      hdmi: json['hdmi'] as int,
      displayPort: json['displayPort'] as int,
      usb_2_0: json['usb_2_0'] as int,
      usb_3_0: json['usb_3_0'] as int,
      usb_type_c: json['usb_type_c'] as int,
      digitalAudioJack: json['digitalAudioJack'] as bool,
      description: json['description'] as String,
      recommendedPrice: json['recommendedPrice'] as int,
      performanceLevel: PerformanceLevel.fromJson(
          json['performanceLevel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MotherboardToJson(_$_Motherboard instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'socket': instance.socket,
      'cpuGenerations': instance.cpuGenerations,
      'motherboardChipset': instance.motherboardChipset,
      'formFactor': instance.formFactor,
      'motherboardProducer': instance.motherboardProducer,
      'maxTdpOfProcessors': instance.maxTdpOfProcessors,
      'memorySlots': instance.memorySlots,
      'supportedMemoryFrequency': instance.supportedMemoryFrequency,
      'maxAmountOfRam': instance.maxAmountOfRam,
      'motherboardNetwork': instance.motherboardNetwork,
      'bluetooth': instance.bluetooth,
      'wifi': instance.wifi,
      'cpuPcieVersion': instance.cpuPcieVersion,
      'pci_express_x16': instance.pci_express_x16,
      'pci_express_x4': instance.pci_express_x4,
      'pci_express_x1': instance.pci_express_x1,
      'sata3': instance.sata3,
      'm2': instance.m2,
      'dSub': instance.dSub,
      'dvi': instance.dvi,
      'hdmi': instance.hdmi,
      'displayPort': instance.displayPort,
      'usb_2_0': instance.usb_2_0,
      'usb_3_0': instance.usb_3_0,
      'usb_type_c': instance.usb_type_c,
      'digitalAudioJack': instance.digitalAudioJack,
      'description': instance.description,
      'recommendedPrice': instance.recommendedPrice,
      'performanceLevel': instance.performanceLevel,
    };
