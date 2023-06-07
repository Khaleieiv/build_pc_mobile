import 'package:build_pc_mobile/common/domain/entities/pc_case/pc_case.dart';

abstract class PcCaseRepository{
  Stream<List<PcCase>> get pcCaseStream;

  Future<void> fetchPcCase();
}
