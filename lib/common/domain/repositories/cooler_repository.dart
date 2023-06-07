import 'package:build_pc_mobile/common/domain/entities/cooler/cooler.dart';

abstract class CoolerRepository {
  Stream<List<Cooler>> get coolerStream;

  Future<void> fetchCooler();
}
