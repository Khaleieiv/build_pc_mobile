import 'dart:async';

import 'package:build_pc_mobile/common/data/repositories/pc_case_repository_impl.dart';
import 'package:build_pc_mobile/common/domain/entities/pc_case/pc_case.dart';
import 'package:build_pc_mobile/common/presentation/state/loading_state_notifier.dart';
import 'package:build_pc_mobile/common/utils/custom_exception.dart';
import 'package:flutter/material.dart';

class PcCaseNotifier extends ChangeNotifier with LoadingStateNotifier {
  List<PcCase>? _listPcCase;

  final PcCaseRepositoryImpl _pcCaseRepositoryImpl;

  StreamSubscription<List<PcCase>>? _pcCaseSubscription;

  CustomException _pcCaseException = CustomException(null);

  List<PcCase>? get listPcCase => _listPcCase;

  CustomException get gpuException => _pcCaseException;

  PcCaseNotifier(this._pcCaseRepositoryImpl) {
    subscribeToPcCaseUpdates(_pcCaseRepositoryImpl.pcCaseStream);
  }

  Future<void> fetchPcCase() async {
    if (isLoading) return;
    setLoadingState(value: true);
    try {
      await _pcCaseRepositoryImpl.fetchPcCase();
    } on CustomResponseException catch (e) {
      _handleCustomError(e);
      rethrow;
    } finally {
      setLoadingState(value: false);
    }
  }

  Future<void> _pcCaseStreamListener(
      List<PcCase>? listPcCase,
      ) async {
    _listPcCase = listPcCase;
    setLoadingState(value: true);
    _handleCustomError(null);
  }

  Future<void> subscribeToPcCaseUpdates(
      Stream<List<PcCase>> pcCaseStream,
      ) async {
    _pcCaseSubscription =
        pcCaseStream.listen(_pcCaseStreamListener);
  }

  void _handleCustomError(Exception? exception) {
    _pcCaseException = CustomException(exception);
  }

  @override
  void dispose() {
    _pcCaseSubscription?.cancel();
    super.dispose();
  }
}
