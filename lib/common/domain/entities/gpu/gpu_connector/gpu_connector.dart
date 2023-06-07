import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gpu_connector.freezed.dart';

part 'gpu_connector.g.dart';

@freezed
class GPUConnector with _$GPUConnector implements BaseComponent {
  const factory GPUConnector ({
    required int id,
    required String name,
  }) = _GPUConnector;

  const GPUConnector._();

  factory GPUConnector.fromJson(Map<String, dynamic> json) =>
      _$GPUConnectorFromJson(json);

  @override
  List<String> parsedModels() {
    final fields = [id.toString(), name];

    return fields;
  }
}
