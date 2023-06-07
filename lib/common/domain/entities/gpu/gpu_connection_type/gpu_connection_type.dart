import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gpu_connection_type.freezed.dart';

part 'gpu_connection_type.g.dart';

@freezed
class GPUConnectionType with _$GPUConnectionType implements BaseComponent {
  const factory GPUConnectionType ({
    required int id,
    required String name,
  }) = _GPUConnectionType;

  const GPUConnectionType._();

  factory GPUConnectionType.fromJson(Map<String, dynamic> json) =>
      _$GPUConnectionTypeFromJson(json);

  @override
  List<String> parsedModels() {
    final fields = [id.toString(), name];

    return fields;
  }
}
