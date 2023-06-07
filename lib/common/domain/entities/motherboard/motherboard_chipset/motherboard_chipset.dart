import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'motherboard_chipset.freezed.dart';

part 'motherboard_chipset.g.dart';

@freezed
class MotherboardChipset with _$MotherboardChipset implements BaseComponent{
  const factory MotherboardChipset ({
    required int id,
    required String name,
  }) = _MotherboardChipset;

  const MotherboardChipset._();

  factory MotherboardChipset.fromJson(Map<String, dynamic> json) =>
      _$MotherboardChipsetFromJson(json);

  @override
  List<String> parsedModels() {
    final fields = [id.toString(), name];

    return fields;
  }
}
