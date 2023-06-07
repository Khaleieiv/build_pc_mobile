import 'dart:async';

import 'package:build_pc_mobile/common/data/repositories/power_supply_repository_impl.dart';
import 'package:build_pc_mobile/common/domain/entities/power_supply/power_supply.dart';
import 'package:build_pc_mobile/common/presentation/state/loading_state_notifier.dart';
import 'package:build_pc_mobile/common/utils/custom_exception.dart';
import 'package:flutter/material.dart';

class PowerSupplyNotifier extends ChangeNotifier with LoadingStateNotifier {
  List<PowerSupply>? _listPowerSupply;

  final PowerSupplyRepositoryImpl _powerSupplyRepositoryImpl;

  StreamSubscription<List<PowerSupply>>? _pcCaseSubscription;

  CustomException _powerSupplyException = CustomException(null);

  List<PowerSupply>? get listPowerSupply => _listPowerSupply;

  CustomException get gpuException => _powerSupplyException;

  PowerSupplyNotifier(this._powerSupplyRepositoryImpl);

  Future<void> fetchPowerSupply() async {
    if (isLoading) return;
    setLoadingState(value: true);
    try {
      await _powerSupplyRepositoryImpl.fetchPowerSupply();
    } on CustomResponseException catch (e) {
      _handleCustomError(e);
      rethrow;
    } finally {
      setLoadingState(value: false);
      notifyListeners();
    }
  }

  Future<void> _powerSupplyStreamListener(
      List<PowerSupply>? listPowerSupply,
      ) async {
    _listPowerSupply = listPowerSupply;
    _handleCustomError(null);
    setLoadingState(value: false);
    notifyListeners();
  }

  Future<void> subscribeToPowerSupplyUpdates(
      Stream<List<PowerSupply>> powerSupplyStream,
      ) async {
    _pcCaseSubscription =
        powerSupplyStream.listen(_powerSupplyStreamListener);
  }

  void _handleCustomError(Exception? exception) {
    _powerSupplyException = CustomException(exception);
  }

  @override
  void dispose() {
    _pcCaseSubscription?.cancel();
    super.dispose();
  }
}
