import 'package:build_pc_mobile/common/domain/entities/storage_drive/hdd/hdd.dart';

abstract class HddRepository {
  Stream<List<Hdd>> get hddStream;

  Future<void> fetchHdd();
}
