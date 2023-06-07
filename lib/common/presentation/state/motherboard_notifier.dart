import 'dart:async';

import 'package:build_pc_mobile/common/data/repositories/motherboard_repository_impl.dart';
import 'package:build_pc_mobile/common/domain/entities/motherboard/motherboard.dart';
import 'package:build_pc_mobile/common/presentation/state/loading_state_notifier.dart';
import 'package:build_pc_mobile/common/utils/custom_exception.dart';
import 'package:flutter/material.dart';

class MotherboardNotifier extends ChangeNotifier with LoadingStateNotifier {
  List<Motherboard>? _listMotherboard;

  final MotherboardRepositoryImpl _motherboardRepositoryImpl;

  StreamSubscription<List<Motherboard>>? _motherboardSubscription;

  CustomException _motherboardException = CustomException(null);

  List<Motherboard>? get listMotherboard => _listMotherboard;

  CustomException get motherboardException => _motherboardException;

  MotherboardNotifier(this._motherboardRepositoryImpl);

  Future<void> fetchMotherboard() async {
    if (isLoading) return;
    setLoadingState(value: true);
    try {
      await _motherboardRepositoryImpl.fetchMotherboard();
    } on CustomResponseException catch (e) {
      _handleCustomError(e);
      rethrow;
    } finally {
      setLoadingState(value: false);
      notifyListeners();
    }
  }

  Future<void> _motherboardStreamListener(
    List<Motherboard>? listMotherboard,
  ) async {
    _listMotherboard = listMotherboard;
    setLoadingState(value: false);
    _handleCustomError(null);
    notifyListeners();
  }

  Future<void> subscribeToMotherboardUpdates(
    Stream<List<Motherboard>> motherboardStream,
  ) async {
    _motherboardSubscription =
        motherboardStream.listen(_motherboardStreamListener);
  }

  void _handleCustomError(Exception? exception) {
    _motherboardException = CustomException(exception);
  }

  @override
  void dispose() {
    _motherboardSubscription?.cancel();
    super.dispose();
  }
}
