import 'dart:async';

import 'package:build_pc_mobile/build_pc/data/repositories/components_for_build_pc_repository_impl.dart';
import 'package:build_pc_mobile/common/domain/entities/cpu/cpu.dart';
import 'package:build_pc_mobile/common/presentation/state/loading_state_notifier.dart';
import 'package:build_pc_mobile/common/utils/custom_exception.dart';
import 'package:flutter/material.dart';

class ComponentsForBuildPcNotifier extends ChangeNotifier
    with LoadingStateNotifier {
  List<CPU>? _listCpuBuildPc;

  final ComponentsForBuildPcRepositoryImpl _componentsForBuildPcRepositoryImpl;

  StreamSubscription<List<CPU>?>? _listCpuBuildPcSubscription;

  CustomException _listCpuBuildPcException = CustomException(null);

  List<CPU>? get listCpuBuildPc => _listCpuBuildPc;

  CustomException get listCpuBuildPcException => _listCpuBuildPcException;

  ComponentsForBuildPcNotifier(this._componentsForBuildPcRepositoryImpl) {
    subscribeToBuildPcUpdates(
      _componentsForBuildPcRepositoryImpl.cpuListForBuild,
    );
  }

  Future<void> fetchBuildPcUserListComponents(int? id) async {
    if (isLoading) return;
    setLoadingState(value: true);
    try {
      await _componentsForBuildPcRepositoryImpl.fetchCpuListComponents(id);
      notifyListeners();
    } on CustomResponseException catch (e) {
      _handleCustomError(e);
      rethrow;
    } finally {
      notifyListeners();
    }
  }

  Future<void> _listCpuBuildPcStreamListener(
    List<CPU>? listCpuBuildPc,
  ) async {
    _listCpuBuildPc = listCpuBuildPc;
    _handleCustomError(null);
    notifyListeners();
  }

  Future<void> subscribeToBuildPcUpdates(
    Stream<List<CPU>?>? listCpuBuildPcStream,
  ) async {
    _listCpuBuildPcSubscription =
        listCpuBuildPcStream?.listen(_listCpuBuildPcStreamListener);
  }

  void _handleCustomError(Exception? exception) {
    _listCpuBuildPcException = CustomException(exception);
  }

  @override
  void dispose() {
    _listCpuBuildPcSubscription?.cancel();
    super.dispose();
  }
}
