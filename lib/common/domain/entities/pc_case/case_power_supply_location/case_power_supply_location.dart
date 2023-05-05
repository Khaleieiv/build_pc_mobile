import 'package:freezed_annotation/freezed_annotation.dart';

part 'case_power_supply_location.freezed.dart';

part 'case_power_supply_location.g.dart';

@freezed
class CasePowerSupplyLocation  with _$CasePowerSupplyLocation {
  const factory CasePowerSupplyLocation ({
    required int id,
    required String powerSupplyLocation,
  }) = _CasePowerSupplyLocation;

  factory CasePowerSupplyLocation.fromJson(Map<String, dynamic> json) =>
      _$CasePowerSupplyLocationFromJson(json);
}
