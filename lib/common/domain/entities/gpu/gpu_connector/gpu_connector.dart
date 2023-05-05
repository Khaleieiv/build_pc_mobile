import 'package:freezed_annotation/freezed_annotation.dart';

part 'gpu_connector.freezed.dart';

part 'gpu_connector.g.dart';

@freezed
class GPUConnector with _$GPUConnector {
  const factory GPUConnector ({
    required int id,
    required String connector,
  }) = _GPUConnector;

  factory GPUConnector.fromJson(Map<String, dynamic> json) =>
      _$GPUConnectorFromJson(json);
}
