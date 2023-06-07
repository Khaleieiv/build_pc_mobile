import 'dart:async';

import 'package:build_pc_mobile/common/data/repositories/cooler_repository_impl.dart';
import 'package:build_pc_mobile/common/domain/entities/cooler/cooler.dart';
import 'package:build_pc_mobile/common/presentation/state/loading_state_notifier.dart';
import 'package:build_pc_mobile/common/utils/custom_exception.dart';
import 'package:flutter/material.dart';

class CoolerNotifier extends ChangeNotifier with LoadingStateNotifier {
  List<Cooler>? _listCooler;

  final CoolerRepositoryImpl _coolerRepositoryImpl;

  StreamSubscription<List<Cooler>>? _coolerSubscription;

  CustomException _coolerException = CustomException(null);

  List<Cooler>? get listCooler => _listCooler;

  CustomException get coolerException => _coolerException;

  CoolerNotifier(this._coolerRepositoryImpl);

  Future<void> fetchCooler() async {
    if (isLoading) return;
    setLoadingState(value: true);
    try {
      await _coolerRepositoryImpl.fetchCooler();
    } on CustomResponseException catch (e) {
      _handleCustomError(e);
      rethrow;
    } finally {
      setLoadingState(value: false);
      notifyListeners();
    }
  }

  Future<void> _coolerStreamListener(List<Cooler>? listCooler) async {
    _listCooler = listCooler;
    setLoadingState(value: false);
    _handleCustomError(null);
    notifyListeners();
  }

  Future<void> subscribeToCoolerUpdates(
    Stream<List<Cooler>> coolerStream,
  ) async {
    _coolerSubscription = coolerStream.listen(_coolerStreamListener);
  }

  void _handleCustomError(Exception? exception) {
    _coolerException = CustomException(exception);
  }

  @override
  void dispose() {
    _coolerSubscription?.cancel();
    super.dispose();
  }
}
