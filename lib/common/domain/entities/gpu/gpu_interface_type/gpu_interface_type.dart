import 'package:freezed_annotation/freezed_annotation.dart';

part 'gpu_interface_type.freezed.dart';

part 'gpu_interface_type.g.dart';

@freezed
class GPUInterfaceType with _$GPUInterfaceType{
  const factory GPUInterfaceType ({
    required int id,
    required String interfaceType,
  }) = _GPUInterfaceType;

  factory GPUInterfaceType.fromJson(Map<String, dynamic> json) =>
      _$GPUInterfaceTypeFromJson(json);
}
