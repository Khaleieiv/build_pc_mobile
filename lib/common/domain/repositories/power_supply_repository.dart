import 'package:build_pc_mobile/common/domain/entities/power_supply/power_supply.dart';

abstract class PowerSupplyRepository{
  Stream<List<PowerSupply>> get powerSupplyStream;

  Future<void> fetchPowerSupply();
}
