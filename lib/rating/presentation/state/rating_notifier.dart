import 'dart:async';

import 'package:build_pc_mobile/build_pc/domain/entities/build_pc.dart';
import 'package:build_pc_mobile/common/presentation/state/loading_state_notifier.dart';
import 'package:build_pc_mobile/common/utils/custom_exception.dart';
import 'package:build_pc_mobile/rating/data/repositories/rating_repository_impl.dart';
import 'package:flutter/material.dart';

class RatingNotifier extends ChangeNotifier with LoadingStateNotifier {
  List<BuildPc>? _listBuildPc;

  final RatingRepositoryImpl _ratingRepositoryImpl;

  StreamSubscription<List<BuildPc>?>? _buildPcListSubscription;

  CustomException _buildPcException = CustomException(null);

  List<BuildPc>? get buildPcList => _listBuildPc;

  CustomException get buildPcException => _buildPcException;

  RatingNotifier(this._ratingRepositoryImpl){
    subscribeToBuildPcUpdates(_ratingRepositoryImpl.currentListBuildPc);
  }

  Object? getComponent(BuildPc buildPc, String componentType) {
    switch (componentType) {
      case 'processor':
        return buildPc.cpu;
      case 'motherboard':
        return buildPc.motherboard;
      case 'cooler':
        return buildPc.cooler;
      case 'gpu':
        return buildPc.gpu;
      case 'memory':
      //ignore: avoid-non-null-assertion
        return buildPc.ram!.isNotEmpty ? buildPc.ram!.first : null;
      case 'hdd':
      //ignore: avoid-non-null-assertion
        return buildPc.hdd!.isNotEmpty ? buildPc.hdd!.first : null;
      case 'ssd':
      //ignore: avoid-non-null-assertion
        return buildPc.ssd!.isNotEmpty ? buildPc.ssd!.first : null;
      case 'power_supply':
        return buildPc.powerSupply;
      case 'case':
        return buildPc.pcCase;
      default:
        return null;
    }
  }

  Future<void> fetchBuildPcListComponents() async {
    if (isLoading) return;
    setLoadingState(value: true);
    try {
      await _ratingRepositoryImpl.fetchBuildPcListComponents();
      notifyListeners();
    } on CustomResponseException catch (e) {
      _handleCustomError(e);
      rethrow;
    } finally {
      setLoadingState(value: false);
    }
  }

  Future<void> _buildPcListStreamListener(
      List<BuildPc>? listBuildPc,
      ) async {
    _listBuildPc = listBuildPc;
    _handleCustomError(null);
    setLoadingState(value: true);
  }

  Future<void> subscribeToBuildPcUpdates(
      Stream<List<BuildPc>?>? buildPcStream,
      ) async {
    _buildPcListSubscription =
        buildPcStream?.listen(_buildPcListStreamListener);
  }

  void _handleCustomError(Exception? exception) {
    _buildPcException = CustomException(exception);
  }

  @override
  void dispose() {
    _buildPcListSubscription?.cancel();
    super.dispose();
  }
}
