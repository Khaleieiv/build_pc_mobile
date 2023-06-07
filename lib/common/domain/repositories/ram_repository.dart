import 'package:build_pc_mobile/common/domain/entities/ram/ram.dart';

abstract class RamRepository {
  Stream<List<Ram>> get ramStream;

  Future<void> fetchRam();
}
