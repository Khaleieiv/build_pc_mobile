import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:build_pc_mobile/common/domain/entities/form_factor/form_factor.dart';
import 'package:build_pc_mobile/common/domain/entities/performance_level/performance_level.dart';
import 'package:build_pc_mobile/common/domain/entities/power_supply/power_supply_protection_functions/power_supply_protection_functions.dart';
import 'package:build_pc_mobile/common/domain/entities/producer/producers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'power_supply.freezed.dart';

part 'power_supply.g.dart';

@freezed
class PowerSupply with _$PowerSupply implements BaseComponent {
  const factory PowerSupply({
    required int id,
    required Producers powerSupplyProducer,
    required String name,
    required int power,
    required FormFactor formFactor,
    required PerformanceLevel? performanceLevel,
    required bool pfcModule,
    required bool modularConnection,
    required List<PowerSupplyProtectionFunctions>
        powerSupplyProtectionFunctions,
    required int cpu_4pin,
    required int cpu_4plus4pin,
    required int cpu_8pin,
    required int pcie_6plus2pin,
    required int pcie_8pin,
    required int pcie_5_16pin,
    required int sata,
    // ignore: non_constant_identifier_names
    required int count_of_12_v_lines,
    required String description,
    required int recommendedPrice,
  }) = _PowerSupply;

  const PowerSupply._();

  factory PowerSupply.fromJson(Map<String, dynamic> json) =>
      _$PowerSupplyFromJson(json);

  @override
  List<String?> parsedModels() {
    final powerSupplyPF = [];
    for (final protectionFunction in powerSupplyProtectionFunctions) {
      powerSupplyPF.add(protectionFunction.name);
    }

    final List<String?> fields = [
      powerSupplyProducer.name,
      name,
      power.toString(),
      formFactor.name,
      performanceLevel?.name,
      pfcModule.toString(),
      modularConnection.toString(),
      powerSupplyPF.toString(),
      cpu_4pin.toString(),
      cpu_4plus4pin.toString(),
      cpu_8pin.toString(),
      pcie_6plus2pin.toString(),
      pcie_5_16pin.toString(),
      sata.toString(),
      count_of_12_v_lines.toString(),
      recommendedPrice.toString(),
      description,
    ];

    return fields;
  }
}
