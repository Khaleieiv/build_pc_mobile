import 'dart:async';

import 'package:build_pc_mobile/common/data/repositories/ssd_repository_impl.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/ssd/ssd.dart';
import 'package:build_pc_mobile/common/presentation/state/loading_state_notifier.dart';
import 'package:build_pc_mobile/common/utils/custom_exception.dart';
import 'package:flutter/material.dart';

class SsdNotifier extends ChangeNotifier with LoadingStateNotifier {
  List<Ssd>? _listSsd;

  final SsdRepositoryImpl _ssdRepositoryImpl;

  StreamSubscription<List<Ssd>>? _ssdSubscription;

  CustomException _ssdException = CustomException(null);

  List<Ssd>? get listSsd => _listSsd;

  CustomException get ssdException => _ssdException;

  SsdNotifier(this._ssdRepositoryImpl) {
    subscribeToSsdUpdates(_ssdRepositoryImpl.ssdStream);
  }

  Future<void> fetchSsd() async {
    if (isLoading) return;
    setLoadingState(value: true);
    try {
      await _ssdRepositoryImpl.fetchSsd();
    } on CustomResponseException catch (e) {
      _handleCustomError(e);
      rethrow;
    } finally {
      setLoadingState(value: false);
    }
  }

  Future<void> _ssdStreamListener(
      List<Ssd>? listSsd,
      ) async {
    _listSsd = listSsd;
    setLoadingState(value: true);
    _handleCustomError(null);
  }

  Future<void> subscribeToSsdUpdates(
      Stream<List<Ssd>> ssdStream,
      ) async {
    _ssdSubscription =
        ssdStream.listen(_ssdStreamListener);
  }

  void _handleCustomError(Exception? exception) {
    _ssdException = CustomException(exception);
  }

  @override
  void dispose() {
    _ssdSubscription?.cancel();
    super.dispose();
  }
}
