// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_pc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BuildPc _$$_BuildPcFromJson(Map<String, dynamic> json) => _$_BuildPc(
      id: json['id'] as int?,
      name: json['nameOfBuild'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      motherboard: json['motherboard'] == null
          ? null
          : Motherboard.fromJson(json['motherboard'] as Map<String, dynamic>),
      cpu: json['processor'] == null
          ? null
          : CPU.fromJson(json['processor'] as Map<String, dynamic>),
      gpu: json['graphicCard'] == null
          ? null
          : GPU.fromJson(json['graphicCard'] as Map<String, dynamic>),
      ram: (json['ram'] as List<dynamic>?)
          ?.map((e) => Ram.fromJson(e as Map<String, dynamic>))
          .toList(),
      powerSupply: json['powerSupply'] == null
          ? null
          : PowerSupply.fromJson(json['powerSupply'] as Map<String, dynamic>),
      hdd: (json['hdd'] as List<dynamic>?)
          ?.map((e) => Hdd.fromJson(e as Map<String, dynamic>))
          .toList(),
      ssd: (json['ssd'] as List<dynamic>?)
          ?.map((e) => Ssd.fromJson(e as Map<String, dynamic>))
          .toList(),
      pcCase: json['pcCase'] == null
          ? null
          : PcCase.fromJson(json['pcCase'] as Map<String, dynamic>),
      cooler: json['cooler'] == null
          ? null
          : Cooler.fromJson(json['cooler'] as Map<String, dynamic>),
      countOfLikes: json['countOfLikes'] as int,
      ratingId: json['ratingId'] == null
          ? null
          : Rating.fromJson(json['ratingId'] as Map<String, dynamic>),
      totalPrice: json['totalPrice'] as int,
    );

Map<String, dynamic> _$$_BuildPcToJson(_$_BuildPc instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nameOfBuild': instance.name,
      'user': instance.user,
      'motherboard': instance.motherboard,
      'processor': instance.cpu,
      'graphicCard': instance.gpu,
      'ram': instance.ram,
      'powerSupply': instance.powerSupply,
      'hdd': instance.hdd,
      'ssd': instance.ssd,
      'pcCase': instance.pcCase,
      'cooler': instance.cooler,
      'countOfLikes': instance.countOfLikes,
      'ratingId': instance.ratingId,
      'totalPrice': instance.totalPrice,
    };
