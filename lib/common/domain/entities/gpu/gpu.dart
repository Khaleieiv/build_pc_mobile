import 'package:build_pc_mobile/common/domain/entities/gpu/gpu_connector/gpu_connector.dart';
import 'package:build_pc_mobile/common/domain/entities/gpu/gpu_interface_type/gpu_interface_type.dart';
import 'package:build_pc_mobile/common/domain/entities/gpu/gpu_memory_type/gpu_memory_type.dart';
import 'package:build_pc_mobile/common/domain/entities/gpu/gpu_producer/gpu_producer.dart';
import 'package:build_pc_mobile/common/domain/entities/gpu/gpu_technologies/gpu_technologies.dart';
import 'package:build_pc_mobile/common/domain/entities/gpu/gpu_vendor/gpu_vendor.dart';
import 'package:build_pc_mobile/common/domain/entities/performance_level/performance_level.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gpu.freezed.dart';

part 'gpu.g.dart';

@freezed
class GPU with _$GPU {
  const factory GPU({
    required int id,
    required GPUProducer gpuProducer,
    required String name,
    required GPUVendor gpuVendor,
    required int year,
    required int technicalProcess,
    required int gpuFrequency,
    required int memoryAmount,
    required GPUMemoryType gpuMemoryType,
    required int memoryFrequency,
    required int bus,
    required int tdp,
    required List<GPUConnector> gpuConnector,
    required GPUInterfaceType gpuInterfaceType,
    required int length,
    required String description,
    required GPUTechnologies gpuTechnologies,
    required int recommendedPrice,
    required PerformanceLevel performanceLevel,
  }) = _GPU;

  factory GPU.fromJson(Map<String, dynamic> json) => _$GPUFromJson(json);
}
