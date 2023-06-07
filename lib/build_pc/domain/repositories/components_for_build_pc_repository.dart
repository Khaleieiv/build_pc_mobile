import 'package:build_pc_mobile/common/domain/entities/cpu/cpu.dart';

abstract class ComponentsForBuildPcRepository{
  Stream<List<CPU>?>? get cpuListForBuild;

  Future<void> fetchCpuListComponents(int id);

  Future<void> updateCpuComponents(CPU cpu, int id);

  Future<void> deleteCpuComponents(int id);
}
