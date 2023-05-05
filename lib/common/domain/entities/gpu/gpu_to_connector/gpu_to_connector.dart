import 'package:build_pc_mobile/common/domain/entities/gpu/gpu.dart';
import 'package:build_pc_mobile/common/domain/entities/gpu/gpu_connector/gpu_connector.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gpu_to_connector.freezed.dart';

part 'gpu_to_connector.g.dart';

@freezed
class GPUToConnector with _$GPUToConnector{
  const factory GPUToConnector ({
    required int id,
    required GPU gpu,
    required GPUConnector gpuConnector,
  }) = _GPUToConnector;

  factory GPUToConnector.fromJson(Map<String, dynamic> json) =>
      _$GPUToConnectorFromJson(json);
}
