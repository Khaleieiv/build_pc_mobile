import 'dart:async';

import 'package:build_pc_mobile/common/data/repositories/hdd_repository_impl.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/hdd/hdd.dart';
import 'package:build_pc_mobile/common/presentation/state/loading_state_notifier.dart';
import 'package:build_pc_mobile/common/utils/custom_exception.dart';
import 'package:flutter/material.dart';

class HddNotifier extends ChangeNotifier with LoadingStateNotifier {
  List<Hdd>? _listHdd;

  final HddRepositoryImpl _hddRepositoryImpl;

  StreamSubscription<List<Hdd>>? _hddSubscription;

  CustomException _hddException = CustomException(null);

  List<Hdd>? get listHdd => _listHdd;

  CustomException get hddException => _hddException;

  HddNotifier(this._hddRepositoryImpl);

  Future<void> fetchHdd() async {
    if (isLoading) return;
    setLoadingState(value: true);
    try {
      await _hddRepositoryImpl.fetchHdd();
    } on CustomResponseException catch (e) {
      _handleCustomError(e);
      rethrow;
    } finally {
      setLoadingState(value: false);
      notifyListeners();
    }
  }

  Future<void> _hddStreamListener(
      List<Hdd>? listHdd,
      ) async {
    _listHdd = listHdd;
    setLoadingState(value: false);
    _handleCustomError(null);
    notifyListeners();
  }

  Future<void> subscribeToHddUpdates(
      Stream<List<Hdd>> hddStream,
      ) async {
    _hddSubscription =
        hddStream.listen(_hddStreamListener);
  }

  void _handleCustomError(Exception? exception) {
    _hddException = CustomException(exception);
  }

  @override
  void dispose() {
    _hddSubscription?.cancel();
    super.dispose();
  }
}
