import 'package:build_pc_mobile/common/domain/entities/motherboard/motherboard.dart';

abstract class MotherboardRepository{
  Stream<List<Motherboard>> get motherboardStream;

  Future<void> fetchMotherboard();
}
