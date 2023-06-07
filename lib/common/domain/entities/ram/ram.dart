import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:build_pc_mobile/common/domain/entities/performance_level/performance_level.dart';
import 'package:build_pc_mobile/common/domain/entities/producer/producers.dart';
import 'package:build_pc_mobile/common/domain/entities/ram/ram_memory_type/ram_memory_type.dart';
import 'package:build_pc_mobile/common/domain/entities/ram/ram_timings/ram_timings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ram.freezed.dart';
part 'ram.g.dart';

@freezed
class Ram with _$Ram implements BaseComponent{
  const factory Ram({
    required int id,
    required String name,
    required Producers ramProducer,
    required RamMemoryType ramMemoryType,
    required int memoryCapacity,
    required int frequency,
    required RamTimings ramTimings,
    required double powerSupplyVoltage,
    required String description,
    required int recommendedPrice,
    required PerformanceLevel? performanceLevel,
  }) = _Ram;

  const Ram._();

  factory Ram.fromJson(Map<String, dynamic> json) => _$RamFromJson(json);

  @override
  List<String?> parsedModels() {
    final fields = [
      name,
      ramProducer.name,
      ramMemoryType.name,
      memoryCapacity.toString(),
      frequency.toString(),
      ramTimings.name,
      powerSupplyVoltage.toString(),
      recommendedPrice.toString(),
      performanceLevel?.name,
      description,
    ];

    return fields;
  }
}
