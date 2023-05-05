import 'package:build_pc_mobile/common/domain/entities/performance_level/performance_level.dart';
import 'package:build_pc_mobile/common/domain/entities/ram/ram_memory_type/ram_memory_type.dart';
import 'package:build_pc_mobile/common/domain/entities/ram/ram_producer/ram_producer.dart';
import 'package:build_pc_mobile/common/domain/entities/ram/ram_timings/ram_timings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ram.freezed.dart';

part 'ram.g.dart';

@freezed
class Ram with _$Ram {
  const factory Ram({
    required int id,
    required String name,
    required RamProducer ramProducer,
    required RamMemoryType ramMemoryType,
    required int memoryCapacity,
    required int frequency,
    required RamTimings ramTimings,
    required double powerSupplyVoltage,
    required String description,
    required int recommendedPrice,
    required PerformanceLevel performanceLevel,
  }) = _Ram;

  factory Ram.fromJson(Map<String, dynamic> json) => _$RamFromJson(json);
}
