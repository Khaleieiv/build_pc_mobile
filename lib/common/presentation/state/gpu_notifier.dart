import 'dart:async';

import 'package:build_pc_mobile/common/data/repositories/gpu_repository_impl.dart';
import 'package:build_pc_mobile/common/domain/entities/gpu/gpu.dart';
import 'package:build_pc_mobile/common/presentation/state/loading_state_notifier.dart';
import 'package:build_pc_mobile/common/utils/custom_exception.dart';
import 'package:flutter/cupertino.dart';

class GPUNotifier extends ChangeNotifier with LoadingStateNotifier {
  List<GPU>? _listGPU;

  final GPURepositoryImpl _gpuRepositoryImpl;

  StreamSubscription<List<GPU>>? _gpuSubscription;

  CustomException _gpuException = CustomException(null);

  List<GPU>? get listGPU => _listGPU;

  CustomException get gpuException => _gpuException;

  GPUNotifier(this._gpuRepositoryImpl) {
    subscribeToGPUUpdates(_gpuRepositoryImpl.gpuStream);
  }

  Future<void> fetchGPU() async {
    if (isLoading) return;
    setLoadingState(value: true);
    try {
      await _gpuRepositoryImpl.fetchGPU();
    } on CustomResponseException catch (e) {
      _handleCustomError(e);
      rethrow;
    }
    finally {
      setLoadingState(value: false);
    }
  }

  Future<void> _gpuStreamListener(List<GPU>? listGPU) async {
    _listGPU = listGPU;
    setLoadingState(value: true);
    _handleCustomError(null);
  }

  Future<void> subscribeToGPUUpdates(Stream<List<GPU>> gpuStream) async {
    _gpuSubscription = gpuStream.listen(_gpuStreamListener);
  }

  void _handleCustomError(Exception? exception) {
    _gpuException = CustomException(exception);
  }

  @override
  void dispose() {
    _gpuSubscription?.cancel();
    super.dispose();
  }
}
