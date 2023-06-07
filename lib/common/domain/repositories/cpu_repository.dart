import 'package:build_pc_mobile/common/domain/entities/cpu/cpu.dart';

abstract class CPURepository{
  Stream<List<CPU>> get cpuStream;

  Future<void> fetchCPU();
}
