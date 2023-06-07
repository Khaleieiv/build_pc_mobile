import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'motherboard_socket.freezed.dart';

part 'motherboard_socket.g.dart';

@freezed
class MotherboardSocket with _$MotherboardSocket implements BaseComponent {
  const factory MotherboardSocket ({
    required int id,
    @JsonKey(name: 'socket')
    required String name,
  }) = _MotherboardSocket;

  const MotherboardSocket._();

  factory MotherboardSocket.fromJson(Map<String, dynamic> json) =>
      _$MotherboardSocketFromJson(json);

  @override
  List<String> parsedModels() {
    final fields = [id.toString(), name];

    return fields;
  }
}
