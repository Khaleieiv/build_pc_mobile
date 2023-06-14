import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gpu_interface_type.freezed.dart';

part 'gpu_interface_type.g.dart';

@freezed
class GPUInterfaceType with _$GPUInterfaceType implements BaseComponent {
  const factory GPUInterfaceType ({
    required int id,
    @JsonKey(name: 'interfaceType')
    required String name,
  }) = _GPUInterfaceType;

  const GPUInterfaceType._();

  factory GPUInterfaceType.fromJson(Map<String, dynamic> json) =>
      _$GPUInterfaceTypeFromJson(json);

  @override
  List<String> parsedModels() {
    final fields = [id.toString(), name];

    return fields;
  }
}
