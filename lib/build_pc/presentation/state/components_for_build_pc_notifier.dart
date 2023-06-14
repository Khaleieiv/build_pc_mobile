import 'dart:async';

import 'package:build_pc_mobile/build_pc/data/repositories/components_for_build_pc_repository_impl.dart';
import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:build_pc_mobile/common/domain/entities/cooler/cooler.dart';
import 'package:build_pc_mobile/common/domain/entities/cpu/cpu.dart';
import 'package:build_pc_mobile/common/domain/entities/gpu/gpu.dart';
import 'package:build_pc_mobile/common/domain/entities/motherboard/motherboard.dart';
import 'package:build_pc_mobile/common/domain/entities/pc_case/pc_case.dart';
import 'package:build_pc_mobile/common/domain/entities/power_supply/power_supply.dart';
import 'package:build_pc_mobile/common/domain/entities/ram/ram.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/hdd/hdd.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/ssd/ssd.dart';
import 'package:build_pc_mobile/common/presentation/state/loading_state_notifier.dart';
import 'package:build_pc_mobile/common/utils/custom_exception.dart';
import 'package:flutter/material.dart';

class ComponentsForBuildPcNotifier extends ChangeNotifier
    with LoadingStateNotifier {
  List<CPU>? _listCpuBuildPc;
  List<Motherboard>? _listMotherboardBuildPc;
  List<GPU>? _listGpuBuildPc;
  List<Cooler>? _listCoolerBuildPc;
  List<Ram>? _listRamBuildPc;
  List<Hdd>? _listHddBuildPc;
  List<Ssd>? _listSsdBuildPc;
  List<PcCase>? _listPcCaseBuildPc;
  List<PowerSupply>? _listPowerSupplyBuildPc;

  StreamSubscription<List<CPU>?>? _listCpuBuildPcSubscription;
  StreamSubscription<List<Motherboard>?>? _listMotherboardListSubscription;
  StreamSubscription<List<GPU>?>? _listGpuListSubscription;
  StreamSubscription<List<Cooler>?>? _listCoolerListSubscription;
  StreamSubscription<List<Ram>?>? _listRamListSubscription;
  StreamSubscription<List<Hdd>?>? _listHddListSubscription;
  StreamSubscription<List<Ssd>?>? _listSsdListSubscription;
  StreamSubscription<List<PcCase>?>? _listPcCaseListSubscription;
  StreamSubscription<List<PowerSupply>?>? _listPowerSupplyListSubscription;

  final ComponentsForBuildPcRepositoryImpl _componentsForBuildPcRepositoryImpl;

  CustomException _listBuildPcException = CustomException(null);

  List<CPU>? get listCpuBuildPc => _listCpuBuildPc;

  List<Motherboard>? get listMotherboardBuildPc => _listMotherboardBuildPc;

  List<GPU>? get listGpuBuildPc => _listGpuBuildPc;

  List<Cooler>? get listCoolerBuildPc => _listCoolerBuildPc;

  List<Ram>? get listRamBuildPc => _listRamBuildPc;

  List<Hdd>? get listHddBuildPc => _listHddBuildPc;

  List<Ssd>? get listSsdBuildPc => _listSsdBuildPc;

  List<PcCase>? get listPcCaseBuildPc => _listPcCaseBuildPc;

  List<PowerSupply>? get listPowerSupplyBuildPc => _listPowerSupplyBuildPc;

  CustomException get listBuildPcException => _listBuildPcException;

  ComponentsForBuildPcNotifier(this._componentsForBuildPcRepositoryImpl) {
    _subscribeToBuildPcUpdatesForCPU(
      _componentsForBuildPcRepositoryImpl.cpuListForBuild,
    );
    _subscribeToBuildPcUpdatesForMotherboard(
      _componentsForBuildPcRepositoryImpl.motherboardListForBuild,
    );
    _subscribeToBuildPcUpdatesForGpu(
      _componentsForBuildPcRepositoryImpl.gpuListForBuild,
    );
    _subscribeToBuildPcUpdatesForCooler(
      _componentsForBuildPcRepositoryImpl.coolerListForBuild,
    );
    _subscribeToBuildPcUpdatesForRam(
      _componentsForBuildPcRepositoryImpl.ramListForBuild,
    );
    _subscribeToBuildPcUpdatesForHdd(
      _componentsForBuildPcRepositoryImpl.hddListForBuild,
    );
    _subscribeToBuildPcUpdatesForSsd(
      _componentsForBuildPcRepositoryImpl.ssdListForBuild,
    );
    _subscribeToBuildPcUpdatesForPcCase(
      _componentsForBuildPcRepositoryImpl.pcCaseForBuild,
    );
    _subscribeToBuildPcUpdatesForPowerSupply(
      _componentsForBuildPcRepositoryImpl.powerSupplyListForBuild,
    );
  }

  List<BaseComponent>? getListByComponentName(String componentName) {
    switch (componentName) {
      case 'processor':
        return _listCpuBuildPc;
      case 'graphic_card':
        return _listGpuBuildPc;
      case 'motherboard':
        return _listMotherboardBuildPc;
      case 'cooler':
        return _listCoolerBuildPc;
      case 'memory':
        return _listRamBuildPc;
      case 'hdd':
        return _listHddBuildPc;
      case 'ssd':
        return _listSsdBuildPc;
      case 'case':
        return _listPcCaseBuildPc;
      case 'power_supply':
        return _listPowerSupplyBuildPc;
      default:
        return null;
    }
  }

  Future<void> fetchComponentListBuildPcComponents<T>(
    int? id,
    Future<void> Function(int?) fetchMethod,
  ) async {
    try {
      await fetchMethod(id);
      notifyListeners();
    } on CustomResponseException catch (e) {
      _handleCustomError(e);
      rethrow;
    } finally {
      notifyListeners();
    }
  }

  Future<void> updateComponentListBuildPcComponents<T>(
    T? component,
    int? id,
    Future<void> Function(T?, int?) updateMethod,
  ) async {
    try {
      await updateMethod(component, id);
      notifyListeners();
    } on CustomResponseException catch (e) {
      _handleCustomError(e);
      rethrow;
    } finally {
      notifyListeners();
    }
  }

  Future<void> deleteComponentListBuildPcComponents<T>(
    int? id,
    Future<void> Function(int?) deleteMethod,
  ) async {
    try {
      await deleteMethod(id);
      notifyListeners();
    } on CustomResponseException catch (e) {
      _handleCustomError(e);
      rethrow;
    } finally {
      notifyListeners();
    }
  }

  Future<void> _listComponentBuildPcStreamListener<T>(
    List<T>? componentList,
    void Function(List<T>?) setComponentList,
  ) async {
    setComponentList(componentList);
    _handleCustomError(null);
    notifyListeners();

  }

  Future<void> _subscribeToBuildPcUpdates<T>(
    Stream<List<T>?>? componentListStream,
    void Function(List<T>?) setComponentList, {
    required StreamSubscription<List<T>?>? componentListSubscription,
  }) async {
    componentListSubscription = componentListStream?.listen(
      (componentList) => _listComponentBuildPcStreamListener<T>(
        componentList,
        setComponentList,
      ),
    );
  }

  Future<void> fetchCpuListBuildPcComponents(int? id) async {
    await fetchComponentListBuildPcComponents<CPU>(
      id,
      _componentsForBuildPcRepositoryImpl.fetchCpuListComponents,
    );
  }

  Future<void> updateCpuListBuildPcComponents(CPU? cpu, int? id) async {
    await updateComponentListBuildPcComponents<CPU>(
      cpu,
      id,
      _componentsForBuildPcRepositoryImpl.updateCpuComponents,
    );
    const Duration(milliseconds: 200);
    await fetchMotherboardListBuildPcComponents(id);
    notifyListeners();
  }

  Future<void> deleteCpuListBuildPcComponents(int? id) async {
    await deleteComponentListBuildPcComponents<CPU>(
      id,
      _componentsForBuildPcRepositoryImpl.deleteCpuComponents,
    );
    const Duration(milliseconds: 200);
    await fetchMotherboardListBuildPcComponents(id);
    notifyListeners();
  }

  Future<void> _listCpuBuildPcStreamListener(List<CPU>? listCpuBuildPc) async {
    _listCpuBuildPc = listCpuBuildPc;
    setLoadingState(value: true);
    _handleCustomError(null);
  }

  Future<void> _subscribeToBuildPcUpdatesForCPU(
    Stream<List<CPU>?>? listCpuBuildPcStream,
  ) async {
    await _subscribeToBuildPcUpdates<CPU>(
      listCpuBuildPcStream,
      _listCpuBuildPcStreamListener,
      componentListSubscription: _listCpuBuildPcSubscription,
    );
  }

  Future<void> fetchMotherboardListBuildPcComponents(int? id) async {
    await fetchComponentListBuildPcComponents<Motherboard>(
      id,
      _componentsForBuildPcRepositoryImpl.fetchMotherboardListComponents,
    );
  }

  Future<void> updateMotherboardListBuildPcComponents(
    Motherboard? motherboard,
    int? id,
  ) async {
    await updateComponentListBuildPcComponents<Motherboard>(
      motherboard,
      id,
      _componentsForBuildPcRepositoryImpl.updateMotherboardComponents,
    );
    const Duration(milliseconds: 200);
    await fetchCoolerListBuildPcComponents(id);
    await fetchRamListBuildPcComponents(id);
    notifyListeners();
  }

  Future<void> deleteMotherboardListBuildPcComponents(int? id) async {
    await deleteComponentListBuildPcComponents<Motherboard>(
      id,
      _componentsForBuildPcRepositoryImpl.deleteMotherboardComponents,
    );
    const Duration(milliseconds: 200);
    await fetchCoolerListBuildPcComponents(id);
    await fetchRamListBuildPcComponents(id);
    notifyListeners();
  }

  Future<void> _listMotherboardBuildPcStreamListener(
    List<Motherboard>? listMotherboardBuildPc,
  ) async {
    _listMotherboardBuildPc = listMotherboardBuildPc;
    setLoadingState(value: true);
    _handleCustomError(null);
  }

  Future<void> _subscribeToBuildPcUpdatesForMotherboard(
    Stream<List<Motherboard>?>? listMotherboardBuildPcStream,
  ) async {
    await _subscribeToBuildPcUpdates<Motherboard>(
      listMotherboardBuildPcStream,
      _listMotherboardBuildPcStreamListener,
      componentListSubscription: _listMotherboardListSubscription,
    );
  }

  Future<void> fetchGpuListBuildPcComponents(int? id) async {
    await fetchComponentListBuildPcComponents<GPU>(
      id,
      _componentsForBuildPcRepositoryImpl.fetchGpuListComponents,
    );
  }

  Future<void> updateGpuListBuildPcComponents(
    GPU? gpu,
    int? id,
  ) async {
    await updateComponentListBuildPcComponents<GPU>(
      gpu,
      id,
      _componentsForBuildPcRepositoryImpl.updateGpuComponents,
    );
  }

  Future<void> deleteGpuListBuildPcComponents(int? id) async {
    await deleteComponentListBuildPcComponents<GPU>(
      id,
      _componentsForBuildPcRepositoryImpl.deleteGpuComponents,
    );
  }

  Future<void> _listGpuBuildPcStreamListener(
    List<GPU>? listGpuBuildPc,
  ) async {
    _listGpuBuildPc = listGpuBuildPc;
    setLoadingState(value: true);
    _handleCustomError(null);
  }

  Future<void> _subscribeToBuildPcUpdatesForGpu(
    Stream<List<GPU>?>? listGpuBuildPcStream,
  ) async {
    await _subscribeToBuildPcUpdates<GPU>(
      listGpuBuildPcStream,
      _listGpuBuildPcStreamListener,
      componentListSubscription: _listGpuListSubscription,
    );
  }

  Future<void> fetchCoolerListBuildPcComponents(int? id) async {
    await fetchComponentListBuildPcComponents<Cooler>(
      id,
      _componentsForBuildPcRepositoryImpl.fetchCoolerListComponents,
    );
  }

  Future<void> updateCoolerListBuildPcComponents(
    Cooler? cooler,
    int? id,
  ) async {
    await updateComponentListBuildPcComponents<Cooler>(
      cooler,
      id,
      _componentsForBuildPcRepositoryImpl.updateCoolerComponents,
    );
  }

  Future<void> deleteCoolerListBuildPcComponents(int? id) async {
    await deleteComponentListBuildPcComponents<Cooler>(
      id,
      _componentsForBuildPcRepositoryImpl.deleteCoolerComponents,
    );
  }

  Future<void> _listCoolerBuildPcStreamListener(
    List<Cooler>? listCoolerBuildPc,
  ) async {
    _listCoolerBuildPc = listCoolerBuildPc;
    setLoadingState(value: true);
    _handleCustomError(null);
  }

  Future<void> _subscribeToBuildPcUpdatesForCooler(
    Stream<List<Cooler>?>? listCoolerBuildPcStream,
  ) async {
    await _subscribeToBuildPcUpdates<Cooler>(
      listCoolerBuildPcStream,
      _listCoolerBuildPcStreamListener,
      componentListSubscription: _listCoolerListSubscription,
    );
  }

  Future<void> fetchRamListBuildPcComponents(int? id) async {
    await fetchComponentListBuildPcComponents<Ram>(
      id,
      _componentsForBuildPcRepositoryImpl.fetchRamListComponents,
    );
  }

  Future<void> updateRamListBuildPcComponents(Ram? ram, int? id) async {
    await updateComponentListBuildPcComponents<Ram>(
      ram,
      id,
      _componentsForBuildPcRepositoryImpl.updateRamComponents,
    );
  }

  Future<void> deleteRamListBuildPcComponents(int? id) async {
    await deleteComponentListBuildPcComponents<Ram>(
      id,
      _componentsForBuildPcRepositoryImpl.deleteRamComponents,
    );
  }

  Future<void> _listRamBuildPcStreamListener(
    List<Ram>? listRamBuildPc,
  ) async {
    _listRamBuildPc = listRamBuildPc;
    setLoadingState(value: true);
    _handleCustomError(null);
  }

  Future<void> _subscribeToBuildPcUpdatesForRam(
    Stream<List<Ram>?>? listRamBuildPcStream,
  ) async {
    await _subscribeToBuildPcUpdates<Ram>(
      listRamBuildPcStream,
      _listRamBuildPcStreamListener,
      componentListSubscription: _listRamListSubscription,
    );
  }

  Future<void> fetchHddListBuildPcComponents(int? id) async {
    await fetchComponentListBuildPcComponents<Hdd>(
      id,
      _componentsForBuildPcRepositoryImpl.fetchHddListComponents,
    );
  }

  Future<void> updateHddListBuildPcComponents(Hdd? hdd, int? id) async {
    await updateComponentListBuildPcComponents<Hdd>(
      hdd,
      id,
      _componentsForBuildPcRepositoryImpl.updateHddComponents,
    );
  }

  Future<void> deleteHddListBuildPcComponents(int? id) async {
    await deleteComponentListBuildPcComponents<Hdd>(
      id,
      _componentsForBuildPcRepositoryImpl.deleteHddComponents,
    );
  }

  Future<void> _listHddBuildPcStreamListener(List<Hdd>? listHddBuildPc) async {
    _listHddBuildPc = listHddBuildPc;
    setLoadingState(value: true);
    _handleCustomError(null);
  }

  Future<void> _subscribeToBuildPcUpdatesForHdd(
    Stream<List<Hdd>?>? listHddBuildPcStream,
  ) async {
    await _subscribeToBuildPcUpdates<Hdd>(
      listHddBuildPcStream,
      _listHddBuildPcStreamListener,
      componentListSubscription: _listHddListSubscription,
    );
  }

  void _handleCustomError(Exception? exception) {
    _listBuildPcException = CustomException(exception);
  }

  Future<void> fetchSsdListBuildPcComponents(int? id) async {
    await fetchComponentListBuildPcComponents<Ssd>(
      id,
      _componentsForBuildPcRepositoryImpl.fetchSsdComponents,
    );
  }

  Future<void> updateSsdListBuildPcComponents(Ssd? ssd, int? id) async {
    await updateComponentListBuildPcComponents<Ssd>(
      ssd,
      id,
      _componentsForBuildPcRepositoryImpl.updateSsdComponents,
    );
  }

  Future<void> deleteSsdListBuildPcComponents(int? id) async {
    await deleteComponentListBuildPcComponents<Ssd>(
      id,
      _componentsForBuildPcRepositoryImpl.deleteSsdComponents,
    );
  }

  Future<void> _listSsdBuildPcStreamListener(List<Ssd>? listSsdBuildPc) async {
    _listSsdBuildPc = listSsdBuildPc;
    setLoadingState(value: true);
    _handleCustomError(null);
  }

  Future<void> _subscribeToBuildPcUpdatesForSsd(
    Stream<List<Ssd>?>? listSsdBuildPcStream,
  ) async {
    await _subscribeToBuildPcUpdates<Ssd>(
      listSsdBuildPcStream,
      _listSsdBuildPcStreamListener,
      componentListSubscription: _listSsdListSubscription,
    );
  }

  Future<void> fetchPcCaseListBuildPcComponents(int? id) async {
    await fetchComponentListBuildPcComponents<PcCase>(
      id,
      _componentsForBuildPcRepositoryImpl.fetchPcCaseComponents,
    );
  }

  Future<void> updatePcCaseListBuildPcComponents(
    PcCase? pcCase,
    int? id,
  ) async {
    await updateComponentListBuildPcComponents<PcCase>(
      pcCase,
      id,
      _componentsForBuildPcRepositoryImpl.updatePcCaseComponents,
    );
  }

  Future<void> deletePcCaseListBuildPcComponents(int? id) async {
    await deleteComponentListBuildPcComponents<PcCase>(
      id,
      _componentsForBuildPcRepositoryImpl.deletePcCaseComponents,
    );
  }

  Future<void> _listPcCaseBuildPcStreamListener(
    List<PcCase>? listPcCaseBuildPc,
  ) async {
    _listPcCaseBuildPc = listPcCaseBuildPc;
    setLoadingState(value: true);
    _handleCustomError(null);
  }

  Future<void> _subscribeToBuildPcUpdatesForPcCase(
    Stream<List<PcCase>?>? listPcCaseBuildPcStream,
  ) async {
    await _subscribeToBuildPcUpdates<PcCase>(
      listPcCaseBuildPcStream,
      _listPcCaseBuildPcStreamListener,
      componentListSubscription: _listPcCaseListSubscription,
    );
  }

  Future<void> fetchPowerSupplyListBuildPcComponents(int? id) async {
    await fetchComponentListBuildPcComponents<PowerSupply>(
      id,
      _componentsForBuildPcRepositoryImpl.fetchPowerSupplyComponents,
    );
  }

  Future<void> updatePowerSupplyListBuildPcComponents(
    PowerSupply? powerSupply,
    int? id,
  ) async {
    await updateComponentListBuildPcComponents<PowerSupply>(
      powerSupply,
      id,
      _componentsForBuildPcRepositoryImpl.updatePowerSupplyComponents,
    );
  }

  Future<void> deletePowerSupplyListBuildPcComponents(int? id) async {
    await deleteComponentListBuildPcComponents<PowerSupply>(
      id,
      _componentsForBuildPcRepositoryImpl.deletePowerSupplyComponents,
    );
  }

  Future<void> _listPowerSupplyBuildPcStreamListener(
    List<PowerSupply>? listPowerSupplyBuildPc,
  ) async {
    _listPowerSupplyBuildPc = listPowerSupplyBuildPc;
    setLoadingState(value: true);
    _handleCustomError(null);
  }

  Future<void> _subscribeToBuildPcUpdatesForPowerSupply(
    Stream<List<PowerSupply>?>? listPowerSupplyBuildPcStream,
  ) async {
    await _subscribeToBuildPcUpdates<PowerSupply>(
      listPowerSupplyBuildPcStream,
      _listPowerSupplyBuildPcStreamListener,
      componentListSubscription: _listPowerSupplyListSubscription,
    );
  }

  @override
  void dispose() {
    _listCpuBuildPcSubscription?.cancel();
    _listMotherboardListSubscription?.cancel();
    _listGpuListSubscription?.cancel();
    _listCoolerListSubscription?.cancel();
    _listRamListSubscription?.cancel();
    _listHddListSubscription?.cancel();
    _listSsdListSubscription?.cancel();
    _listPcCaseListSubscription?.cancel();
    _listPowerSupplyListSubscription?.cancel();
    super.dispose();
  }
}
