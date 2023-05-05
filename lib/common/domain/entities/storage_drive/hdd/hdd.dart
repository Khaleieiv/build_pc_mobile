import 'package:build_pc_mobile/common/domain/entities/performance_level/performance_level.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/storage_form_factor/storage_form_factor.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/storage_interface/storage_interface.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/storage_producer/storage_producer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hdd.freezed.dart';

part 'hdd.g.dart';

@freezed
class Hdd with _$Hdd {
  const factory Hdd({
    required int id,
    required StorageProducer storageProducer,
    required int storageSize,
    required int speed,
    required StorageFormFactor storageFormFactor,
    required StorageInterface storageInterface,
    required int bufferSize,
    required int readingSpeed,
    required int writingSpeed,
    required String description,
    required int recommendedPrice,
    required PerformanceLevel performanceLevel,
  }) = _Hdd;

  factory Hdd.fromJson(Map<String, dynamic> json) => _$HddFromJson(json);
}
