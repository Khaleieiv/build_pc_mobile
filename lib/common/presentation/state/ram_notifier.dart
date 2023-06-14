import 'dart:async';

import 'package:build_pc_mobile/common/data/repositories/ram_repository_impl.dart';
import 'package:build_pc_mobile/common/domain/entities/ram/ram.dart';
import 'package:build_pc_mobile/common/presentation/state/loading_state_notifier.dart';
import 'package:build_pc_mobile/common/utils/custom_exception.dart';
import 'package:flutter/material.dart';

class RamNotifier extends ChangeNotifier with LoadingStateNotifier {
  List<Ram>? _listRam;

  final RamRepositoryImpl _ramRepositoryImpl;

  StreamSubscription<List<Ram>>? _ramSubscription;

  CustomException _ramException = CustomException(null);

  List<Ram>? get listRam => _listRam;

  CustomException get ramException => _ramException;

  RamNotifier(this._ramRepositoryImpl) {
    subscribeToRamUpdates(_ramRepositoryImpl.ramStream);
  }

  Future<void> fetchRam() async {
    if (isLoading) return;
    setLoadingState(value: true);
    try {
      await _ramRepositoryImpl.fetchRam();
    } on CustomResponseException catch (e) {
      _handleCustomError(e);
      rethrow;
    } finally {
      setLoadingState(value: false);
    }
  }

  Future<void> _ramStreamListener(
      List<Ram>? listRam,
      ) async {
    _listRam = listRam;
    setLoadingState(value: true);
    _handleCustomError(null);
  }

  Future<void> subscribeToRamUpdates(
      Stream<List<Ram>> ramStream,
      ) async {
    _ramSubscription =
        ramStream.listen(_ramStreamListener);
  }

  void _handleCustomError(Exception? exception) {
    _ramException = CustomException(exception);
  }

  @override
  void dispose() {
    _ramSubscription?.cancel();
    super.dispose();
  }
}
