import 'package:freezed_annotation/freezed_annotation.dart';

part 'power_supply_protection_functions.freezed.dart';

part 'power_supply_protection_functions.g.dart';

@freezed
class  PowerSupplyProtectionFunctions with _$PowerSupplyProtectionFunctions {
  const factory  PowerSupplyProtectionFunctions ({
    required int id,
    required String name,
  }) = _PowerSupplyProtectionFunctions;

  factory  PowerSupplyProtectionFunctions.fromJson(Map<String, dynamic> json) =>
      _$PowerSupplyProtectionFunctionsFromJson(json);
}
