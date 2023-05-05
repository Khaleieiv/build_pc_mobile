import 'package:freezed_annotation/freezed_annotation.dart';

part 'motherboard_chipset.freezed.dart';

part 'motherboard_chipset.g.dart';

@freezed
class MotherboardChipset with _$MotherboardChipset {
  const factory MotherboardChipset ({
    required int id,
    required String chipset,
  }) = _MotherboardChipset;

  factory MotherboardChipset.fromJson(Map<String, dynamic> json) =>
      _$MotherboardChipsetFromJson(json);
}
