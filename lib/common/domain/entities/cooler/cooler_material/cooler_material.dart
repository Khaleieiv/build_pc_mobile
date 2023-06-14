import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cooler_material.freezed.dart';

part 'cooler_material.g.dart';

@freezed
class CoolerMaterial with _$CoolerMaterial implements BaseComponent {
  const factory CoolerMaterial({
    required int id,
    @JsonKey(name: 'material')
    required String name,
  }) = _CoolerMaterial;

  const CoolerMaterial._();

  factory CoolerMaterial.fromJson(Map<String, dynamic> json) =>
      _$CoolerMaterialFromJson(json);

  @override
  List<String> parsedModels() {
    final fields = [id.toString(), name];

    return fields;
  }
}
