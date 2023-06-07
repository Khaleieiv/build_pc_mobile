import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'case_power_supply_location.freezed.dart';

part 'case_power_supply_location.g.dart';

@freezed
class CasePowerSupplyLocation
    with _$CasePowerSupplyLocation
    implements BaseComponent {
  const factory CasePowerSupplyLocation({
    required int id,
    required String name,
  }) = _CasePowerSupplyLocation;

  const CasePowerSupplyLocation._();

  factory CasePowerSupplyLocation.fromJson(Map<String, dynamic> json) =>
      _$CasePowerSupplyLocationFromJson(json);

  @override
  List<String> parsedModels() {
    final fields = [id.toString(), name];

    return fields;
  }
}
