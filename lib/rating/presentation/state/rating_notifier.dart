import 'dart:async';

import 'package:build_pc_mobile/build_pc/domain/entities/build_pc.dart';
import 'package:build_pc_mobile/common/presentation/state/loading_state_notifier.dart';
import 'package:build_pc_mobile/common/utils/custom_exception.dart';
import 'package:build_pc_mobile/rating/data/repositories/rating_repository_impl.dart';
import 'package:flutter/material.dart';

class RatingNotifier extends ChangeNotifier with LoadingStateNotifier {
  List<BuildPc>? _listBuildPc;

  BuildPc? _buildPc;

  Map<int, bool> assemblyBoolMap = {};

  final RatingRepositoryImpl _ratingRepositoryImpl;

  StreamSubscription<List<BuildPc>?>? _buildPcListSubscription;

  CustomException _buildPcException = CustomException(null);

  List<BuildPc>? get buildPcList => _listBuildPc;

  BuildPc? get buildPc => _buildPc;

  CustomException get buildPcException => _buildPcException;

  set buildPc(BuildPc? value) {
    _buildPc = value;
    notifyListeners();
  }

  RatingNotifier(this._ratingRepositoryImpl) {
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

  bool? getAssemblyBool(int assemblyId) {
    return assemblyBoolMap[assemblyId];
  }

  void setAssemblyBool(int assemblyId, {required bool value}) {
    assemblyBoolMap[assemblyId] = value;
    notifyListeners();
  }

  Future<void> fetchBuildPcListComponents() async {
    try {
      await _ratingRepositoryImpl.fetchBuildPcListComponents();
      notifyListeners();
    } on CustomResponseException catch (e) {
      _handleCustomError(e);
      rethrow;
    } finally {
      notifyListeners();
    }
  }

  Future<void> putLike(int? id) async {
    try {
      await _ratingRepositoryImpl.putLike(id);
      await _ratingRepositoryImpl.fetchBuildPcListComponents();
      notifyListeners();
    } on CustomResponseException catch (e) {
      _handleCustomError(e);
      rethrow;
    } finally {
      notifyListeners();
    }
  }

  Future<void> isLiked(int? id) async {
    try {
      final boolCheck = await _ratingRepositoryImpl.isLiked(id);
      if (id != null) {
        setAssemblyBool(id, value: boolCheck);
      }
    } on CustomResponseException catch (e) {
      _handleCustomError(e);
      rethrow;
    } finally {
      notifyListeners();
    }
  }

  Future<void> deleteLike(int? id) async {
    try {
      await _ratingRepositoryImpl.deleteLike(id);
      await _ratingRepositoryImpl.fetchBuildPcListComponents();
      notifyListeners();
    } on CustomResponseException catch (e) {
      _handleCustomError(e);
      rethrow;
    } finally {
      notifyListeners();
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
