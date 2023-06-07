import 'dart:async';

import 'package:build_pc_mobile/common/data/repositories/cpu_repository_impl.dart';
import 'package:build_pc_mobile/common/domain/entities/cpu/cpu.dart';
import 'package:build_pc_mobile/common/presentation/state/loading_state_notifier.dart';
import 'package:build_pc_mobile/common/utils/custom_exception.dart';
import 'package:flutter/cupertino.dart';

class CPUNotifier extends ChangeNotifier with LoadingStateNotifier {
  List<CPU>? _listCPU;

  final CPURepositoryImpl _cpuRepositoryImpl;

  StreamSubscription<List<CPU>>? _cpuSubscription;

  CustomException _cpuException = CustomException(null);

  List<CPU>? get listCPU => _listCPU;

  CustomException get cpuException => _cpuException;

  CPUNotifier(this._cpuRepositoryImpl){
    subscribeToCPUUpdates(_cpuRepositoryImpl.cpuStream);
  }

  Future<void> fetchCPU() async {
    if (isLoading) return;
    setLoadingState(value: true);
    try {
      await _cpuRepositoryImpl.fetchCPU();
    } on CustomResponseException catch (e) {
      _handleCustomError(e);
      rethrow;
    }
    finally {
      notifyListeners();
    }
  }

  Future<void> _cpuStreamListener(List<CPU>? listCPU) async {
    _listCPU = listCPU;

    _handleCustomError(null);
    notifyListeners();
  }

  Future<void> subscribeToCPUUpdates(Stream<List<CPU>> cpuStream) async {
    _cpuSubscription = cpuStream.listen(_cpuStreamListener);
  }

  void _handleCustomError(Exception? exception) {
    _cpuException = CustomException(exception);
  }

  @override
  void dispose() {
    _cpuSubscription?.cancel();
    super.dispose();
  }
}
