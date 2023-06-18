import 'dart:async';
import 'dart:core';

import 'package:build_pc_mobile/build_pc/data/repositories/build_pc_repository_impl.dart';
import 'package:build_pc_mobile/build_pc/domain/entities/build_pc.dart';
import 'package:build_pc_mobile/common/presentation/state/loading_state_notifier.dart';
import 'package:build_pc_mobile/common/utils/custom_exception.dart';
import 'package:flutter/material.dart';

class BuildPcNotifier extends ChangeNotifier with LoadingStateNotifier {
  int? _priceBuild = 0;

  List<BuildPc>? _listBuildPc;

  BuildPc? _buildPc;

  final BuildPcRepositoryImpl _buildPcRepositoryImpl;

  StreamSubscription<BuildPc?>? _buildPcUserSubscription;

  StreamSubscription<List<BuildPc>?>? _buildPcListUserSubscription;

  CustomException _buildPcException = CustomException(null);


  int? get priceBuild => _priceBuild;

  BuildPc? get buildPc => _buildPc;

  List<BuildPc>? get buildPcList => _listBuildPc;

  CustomException get buildPcException => _buildPcException;

  set priceBuild(int? value){
    _priceBuild = value;
    notifyListeners();
  }

  BuildPcNotifier(this._buildPcRepositoryImpl) {
    subscribeToBuildPcUpdates(_buildPcRepositoryImpl.currentListBuildPc);
    subscribeToBuildPcUserUpdates(_buildPcRepositoryImpl.currentBuildPc);
  }

  Future<void> createBuildPcUserComponents() async {
    try {
      await _buildPcRepositoryImpl.createBuildPcUserListComponents();
      await _buildPcRepositoryImpl.fetchBuildPcUserListComponents();
      notifyListeners();
    } on CustomResponseException catch (e) {
      _handleCustomError(e);
      rethrow;
    } finally {
      notifyListeners();
    }
  }

  Future<int?> getBuildPcUserComponents(int? id) async {
    try {
      final build = await _buildPcRepositoryImpl.getBuildPcUserComponents(id);

      return build?.totalPrice;
    } on CustomResponseException catch (e) {
      _handleCustomError(e);
      rethrow;
    } finally {
      notifyListeners();
    }
  }

  Future<void> updateBuildPcUserComponents(BuildPc buildPc, int? id) async {
    try {
      await _buildPcRepositoryImpl.updateBuildPcUserListComponents(buildPc, id);
      await _buildPcRepositoryImpl.fetchBuildPcUserListComponents();
      notifyListeners();
    } on CustomResponseException catch (e) {
      _handleCustomError(e);
      rethrow;
    } finally {
      notifyListeners();
    }
  }

  Future<void> fetchBuildPcUserListComponents() async {
    try {
      await _buildPcRepositoryImpl.fetchBuildPcUserListComponents();
      notifyListeners();
    } on CustomResponseException catch (e) {
      _handleCustomError(e);
      rethrow;
    } finally {
      notifyListeners();
    }
  }

  Future<void> deleteBuildPcUserListComponents(int? id) async {
    try {
      await _buildPcRepositoryImpl.deleteBuildPcUserListComponents(id);
      await _buildPcRepositoryImpl.fetchBuildPcUserListComponents();
    } on CustomResponseException catch (e) {
      _handleCustomError(e);
      rethrow;
    } finally {
      notifyListeners();
    }
  }

  Object? getComponent(BuildPc buildPc, String componentType) {
    switch (componentType) {
      case 'processor':
        return buildPc.cpu;
      case 'motherboard':
        return buildPc.motherboard;
      case 'cooler':
        return buildPc.cooler;
      case 'gpu':
        return buildPc.gpu;
      case 'memory':
        //ignore: avoid-non-null-assertion
        return buildPc.ram!.isNotEmpty ? buildPc.ram!.first : null;
      case 'hdd':
        //ignore: avoid-non-null-assertion
        return buildPc.hdd!.isNotEmpty ? buildPc.hdd!.first : null;
      case 'ssd':
        //ignore: avoid-non-null-assertion
        return buildPc.ssd!.isNotEmpty ? buildPc.ssd!.first : null;
      case 'power_supply':
        return buildPc.powerSupply;
      case 'case':
        return buildPc.pcCase;
      default:
        return null;
    }
  }

  Future<void> _buildPcUserListStreamListener(
    List<BuildPc>? listBuildPc,
  ) async {
    _listBuildPc = listBuildPc;
    _handleCustomError(null);
    setLoadingState(value: true);
  }

  Future<void> _buildPcUserStreamListener(
    BuildPc? buildPc,
  ) async {
    _buildPc = buildPc;
    _handleCustomError(null);
    notifyListeners();
  }

  Future<void> subscribeToBuildPcUpdates(
    Stream<List<BuildPc>?>? buildPcStream,
  ) async {
    _buildPcListUserSubscription =
        buildPcStream?.listen(_buildPcUserListStreamListener);
  }

  Future<void> subscribeToBuildPcUserUpdates(
    Stream<BuildPc?> buildPcStream,
  ) async {
    _buildPcUserSubscription = buildPcStream.listen(_buildPcUserStreamListener);
  }

  void _handleCustomError(Exception? exception) {
    _buildPcException = CustomException(exception);
  }

  @override
  void dispose() {
    _buildPcListUserSubscription?.cancel();
    _buildPcUserSubscription?.cancel();
    super.dispose();
  }
}
