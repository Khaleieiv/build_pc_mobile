import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gpu_memory_type.freezed.dart';

part 'gpu_memory_type.g.dart';

@freezed
class GPUMemoryType with _$GPUMemoryType implements BaseComponent {
  const factory GPUMemoryType ({
    required int id,
    required String name,
  }) = _GPUMemoryType;

  const GPUMemoryType._();

  factory GPUMemoryType.fromJson(Map<String, dynamic> json) =>
      _$GPUMemoryTypeFromJson(json);

  @override
  List<String> parsedModels() {
    final fields = [id.toString(), name];

    return fields;
  }
}
