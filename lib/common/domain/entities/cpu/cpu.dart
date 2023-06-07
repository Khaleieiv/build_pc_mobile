import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:build_pc_mobile/common/domain/entities/cpu/cpu_generation/cpu_generation.dart';
import 'package:build_pc_mobile/common/domain/entities/cpu/cpu_pcie_version/cpu_pcie_version.dart';
import 'package:build_pc_mobile/common/domain/entities/cpu/cpu_tech/cpu_tech.dart';
import 'package:build_pc_mobile/common/domain/entities/motherboard/motherboard_socket/motherboard_socket.dart';
import 'package:build_pc_mobile/common/domain/entities/performance_level/performance_level.dart';
import 'package:build_pc_mobile/common/domain/entities/producer/producers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cpu.freezed.dart';
part 'cpu.g.dart';

@freezed
class CPU with _$CPU implements BaseComponent {
  const factory CPU({
    required int id,
    required String name,
    required Producers? producer,
    required int yearOfRelease,
    required MotherboardSocket? socket,
    required int countOfCores,
    required int countOfThreads,
    required int baseFrequency,
    required int turboFrequency,
    required int l3Cache,
    required CPUGeneration cpuGeneration,
    required int technicalProcess,
    required int tdp,
    required int maxTemperature,
    required bool embeddedGraphic,
    @JsonKey(name: 'pcieVersion')
    required CPUPcieVersion? cpuPcieVersion,
    required List<CPUTech?> cpuTech,
    required String description,
    required int recommendedPrice,
    required PerformanceLevel? performanceLevel,
  }) = _CPU;

  const CPU._();

  factory CPU.fromJson(Map<String, dynamic> json) => _$CPUFromJson(json);

  @override
  List<String?> parsedModels() {
    final cpuTechList = StringBuffer();

    for (final tech in cpuTech) {
      cpuTechList.write('${tech?.name}, ');
    }

    final fields = [
      name,
      producer?.name,
      yearOfRelease.toString(),
      socket?.name,
      countOfCores.toString(),
      countOfThreads.toString(),
      baseFrequency.toString(),
      turboFrequency.toString(),
      l3Cache.toString(),
      cpuGeneration.name,
      technicalProcess.toString(),
      tdp.toString(),
      maxTemperature.toString(),
      embeddedGraphic.toString(),
      cpuPcieVersion?.name,
      cpuTechList.toString(),
      recommendedPrice.toString(),
      performanceLevel?.name,
      description,
    ];

    return fields;
  }
}
