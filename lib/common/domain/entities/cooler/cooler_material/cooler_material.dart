import 'package:freezed_annotation/freezed_annotation.dart';

part 'cooler_material.freezed.dart';

part 'cooler_material.g.dart';

@freezed
class CoolerMaterial with _$CoolerMaterial {
  const factory CoolerMaterial({
    required int id,
    required String material,
  }) = _CoolerMaterial;

  factory CoolerMaterial.fromJson(Map<String, dynamic> json) =>
      _$CoolerMaterialFromJson(json);
}
