// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_pc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BuildPc _$$_BuildPcFromJson(Map<String, dynamic> json) => _$_BuildPc(
      id: json['id'] as int,
      nameOfBuild: json['nameOfBuild'] as String,
      userId: json['userId'] as int,
      motherboard:
          Motherboard.fromJson(json['motherboard'] as Map<String, dynamic>),
      cpu: CPU.fromJson(json['cpu'] as Map<String, dynamic>),
      gpu: GPU.fromJson(json['gpu'] as Map<String, dynamic>),
      ram: (json['ram'] as List<dynamic>)
          .map((e) => Ram.fromJson(e as Map<String, dynamic>))
          .toList(),
      powerSupply:
          PowerSupply.fromJson(json['powerSupply'] as Map<String, dynamic>),
      hdd: (json['hdd'] as List<dynamic>)
          .map((e) => Hdd.fromJson(e as Map<String, dynamic>))
          .toList(),
      ssd: (json['ssd'] as List<dynamic>)
          .map((e) => Ssd.fromJson(e as Map<String, dynamic>))
          .toList(),
      pcCase: PcCase.fromJson(json['pcCase'] as Map<String, dynamic>),
      cooler: Cooler.fromJson(json['cooler'] as Map<String, dynamic>),
      countOfLikes: json['countOfLikes'] as int,
      ratingId: Rating.fromJson(json['ratingId'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BuildPcToJson(_$_BuildPc instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nameOfBuild': instance.nameOfBuild,
      'userId': instance.userId,
      'motherboard': instance.motherboard,
      'cpu': instance.cpu,
      'gpu': instance.gpu,
      'ram': instance.ram,
      'powerSupply': instance.powerSupply,
      'hdd': instance.hdd,
      'ssd': instance.ssd,
      'pcCase': instance.pcCase,
      'cooler': instance.cooler,
      'countOfLikes': instance.countOfLikes,
      'ratingId': instance.ratingId,
    };
