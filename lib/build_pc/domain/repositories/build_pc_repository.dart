import 'package:build_pc_mobile/build_pc/domain/entities/build_pc.dart';

abstract class BuildPcRepository {
  Stream<List<BuildPc>?>? get currentListBuildPc;

  Stream<BuildPc?> get currentBuildPc;

  Future<void> createBuildPcUserListComponents();

  Future<void> getBuildPcUserComponents(int id);

  Future<void> updateBuildPcUserListComponents(BuildPc buildPc, int id);

  Future<void> fetchBuildPcUserListComponents();

  Future<void> deleteBuildPcUserListComponents(int id);
}
