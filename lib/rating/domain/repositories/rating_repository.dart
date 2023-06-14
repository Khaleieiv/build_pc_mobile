import 'package:build_pc_mobile/build_pc/domain/entities/build_pc.dart';

abstract class RatingRepository {
  Stream<List<BuildPc>?>? get currentListBuildPc;

  Stream<BuildPc?> get currentBuildPc;

  Future<void> fetchBuildPcListComponents();

  Future<void> putLike(int id);
}
