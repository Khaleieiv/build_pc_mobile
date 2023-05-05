import 'package:build_pc_mobile/common/domain/entities/cpu/cpu_generation/cpu_generation.dart';
import 'package:build_pc_mobile/common/domain/entities/cpu/cpu_pcie_version/cpu_pcie_version.dart';
import 'package:build_pc_mobile/common/domain/entities/cpu/cpu_producer/cpu_producer.dart';
import 'package:build_pc_mobile/common/domain/entities/motherboard/motherboard_socket/motherboard_socket.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cpu.freezed.dart';

part 'cpu.g.dart';

@freezed
class CPU with _$CPU {
  const factory CPU({
    required int id,
    required String name,
    required CPUProducer cpuProducer,
    required int yearOfRelease,
    required MotherboardSocket motherboardSocket,
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
    required CPUPcieVersion cpuPcieVersion,
    required String description,
  }) = _CPU;

  factory CPU.fromJson(Map<String, dynamic> json) => _$CPUFromJson(json);
}
