import 'package:build_pc_mobile/common/domain/entities/gpu/gpu.dart';

abstract class GPURepository{
  Stream<List<GPU>> get gpuStream;

  Future<void> fetchGPU();
}
