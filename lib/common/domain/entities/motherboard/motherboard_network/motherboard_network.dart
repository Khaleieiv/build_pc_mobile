import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'motherboard_network.freezed.dart';

part 'motherboard_network.g.dart';

@freezed
class MotherboardNetwork with _$MotherboardNetwork implements BaseComponent {
  const factory MotherboardNetwork ({
    required int id,
    required String name,
  }) = _MotherboardNetwork;

  const MotherboardNetwork._();

  factory MotherboardNetwork.fromJson(Map<String, dynamic> json) =>
      _$MotherboardNetworkFromJson(json);

  @override
  List<String> parsedModels() {
    final fields = [id.toString(), name];

    return fields;
  }
}
