import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'power_supply_protection_functions.freezed.dart';

part 'power_supply_protection_functions.g.dart';

@freezed
class PowerSupplyProtectionFunctions with _$PowerSupplyProtectionFunctions
    implements BaseComponent {
  const factory PowerSupplyProtectionFunctions({
    required int id,
    required String name,
  }) = _PowerSupplyProtectionFunctions;

  const PowerSupplyProtectionFunctions._();

  factory PowerSupplyProtectionFunctions.fromJson(Map<String, dynamic> json) =>
      _$PowerSupplyProtectionFunctionsFromJson(json);

  @override
  List<String> parsedModels() {
    final fields = [id.toString(), name];

    return fields;
  }
}
