import 'package:freezed_annotation/freezed_annotation.dart';

part 'gpu_connection_type.freezed.dart';

part 'gpu_connection_type.g.dart';

@freezed
class GPUConnectionType with _$GPUConnectionType {
  const factory GPUConnectionType ({
    required int id,
    required String connectionType,
  }) = _GPUConnectionType;

  factory GPUConnectionType.fromJson(Map<String, dynamic> json) =>
      _$GPUConnectionTypeFromJson(json);
}
