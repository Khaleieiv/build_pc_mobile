import 'package:build_pc_mobile/common/domain/entities/cooler/cooler.dart';
import 'package:build_pc_mobile/common/domain/entities/cpu/cpu.dart';
import 'package:build_pc_mobile/common/domain/entities/gpu/gpu.dart';
import 'package:build_pc_mobile/common/domain/entities/motherboard/motherboard.dart';
import 'package:build_pc_mobile/common/domain/entities/pc_case/pc_case.dart';
import 'package:build_pc_mobile/common/domain/entities/power_supply/power_supply.dart';
import 'package:build_pc_mobile/common/domain/entities/ram/ram.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/hdd/hdd.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/ssd/ssd.dart';

abstract class ComponentsForBuildPcRepository{
  Stream<List<CPU>?>? get cpuListForBuild;

  Stream<List<Motherboard>?>? get motherboardListForBuild;

  Stream<List<GPU>?>? get gpuListForBuild;

  Stream<List<Cooler>?>? get coolerListForBuild;

  Stream<List<PcCase>?>? get pcCaseForBuild;

  Stream<List<Ram>?>? get ramListForBuild;

  Stream<List<Hdd>?>? get hddListForBuild;

  Stream<List<Ssd>?>? get ssdListForBuild;

  Stream<List<PowerSupply>?>? get powerSupplyListForBuild;

  Future<void> fetchCpuListComponents(int id);

  Future<void> updateCpuComponents(CPU cpu, int id);

  Future<void> deleteCpuComponents(int id);

  Future<void> fetchMotherboardListComponents(int id);

  Future<void> updateMotherboardComponents(Motherboard motherboard, int id);

  Future<void> deleteMotherboardComponents(int id);

  Future<void> fetchGpuListComponents(int id);

  Future<void> updateGpuComponents(GPU gpu, int id);

  Future<void> deleteGpuComponents(int id);

  Future<void> fetchCoolerListComponents(int id);

  Future<void> updateCoolerComponents(Cooler cooler, int id);

  Future<void> deleteCoolerComponents(int id);

  Future<void> fetchRamListComponents(int id);

  Future<void> updateRamComponents(Ram ram, int id);

  Future<void> deleteRamComponents(int id);

  Future<void> fetchHddListComponents(int id);

  Future<void> updateHddComponents(Hdd hdd, int id);

  Future<void> deleteHddComponents(int id);

  Future<void> fetchSsdComponents(int id);

  Future<void> updateSsdComponents(Ssd ssd, int id);

  Future<void> deleteSsdComponents(int id);

  Future<void> fetchPowerSupplyComponents(int id);

  Future<void> updatePowerSupplyComponents(PowerSupply powerSupply, int id);

  Future<void> deletePowerSupplyComponents(int id);

  Future<void> fetchPcCaseComponents(int id);

  Future<void> updatePcCaseComponents(PcCase pcCase, int id);

  Future<void> deletePcCaseComponents(int id);
}
