import 'package:freezed_annotation/freezed_annotation.dart';

part 'gpu_memory_type.freezed.dart';

part 'gpu_memory_type.g.dart';

@freezed
class GPUMemoryType with _$GPUMemoryType{
  const factory GPUMemoryType ({
    required int id,
    required String memoryType,
  }) = _GPUMemoryType;

  factory GPUMemoryType.fromJson(Map<String, dynamic> json) =>
      _$GPUMemoryTypeFromJson(json);
}
