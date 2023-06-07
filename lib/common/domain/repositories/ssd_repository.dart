import 'package:build_pc_mobile/common/domain/entities/storage_drive/ssd/ssd.dart';

abstract class SsdRepository {
  Stream<List<Ssd>> get ssdStream;

  Future<void> fetchSsd();
}
