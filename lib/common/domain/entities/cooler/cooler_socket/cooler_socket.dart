import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cooler_socket.freezed.dart';

part 'cooler_socket.g.dart';

@freezed
class CoolerSocket with _$CoolerSocket implements BaseComponent {
  const factory CoolerSocket({
    required int id,
    required String name,
  }) = _CoolerSocket;

  const CoolerSocket._();

  factory CoolerSocket.fromJson(Map<String, dynamic> json) =>
      _$CoolerSocketFromJson(json);

  @override
  List<String> parsedModels() {
    final fields = [id.toString(), name];

    return fields;
  }
}
