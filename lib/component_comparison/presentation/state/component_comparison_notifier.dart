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
import 'package:flutter/cupertino.dart';

class ComponentComparisonNotifier extends ChangeNotifier {
  int _counter = 0;

  bool _swapButton = true;

  Map<String, List<BaseComponent>> comparedComponents = {
    "processor": <CPU>[],
    "motherboard": <Motherboard>[],
    "graphic_card": <GPU>[],
    "memory": <Ram>[],
    "ssd": <Ssd>[],
    "hdd": <Hdd>[],
    "cooler": <Cooler>[],
    "power_supply": <PowerSupply>[],
    "case": <PcCase>[],
  };

  String? _modelName;

  String? get modelName => _modelName;

  set modelName(String? value) {
    _modelName = value;
    notifyListeners();
  }

  int get counter => _counter;

  bool get swapButton => _swapButton;

  Map<String, List<BaseComponent>> get selectedComponents => comparedComponents;

  void swapButtonState({required bool value}) {
    if (_swapButton == value) return;

    _swapButton = value;
    notifyListeners();
  }

  Future<void> addToComparison(
    String? componentType,
    BaseComponent component,
  ) async {
    if (!selectedComponents[componentType]!.contains(component)) {
      selectedComponents[componentType]?.add(component);
      ++_counter;
      swapButtonState(value: false);
      notifyListeners();
    }
  }

  Future<void> clearListComparison(
    String? componentType,
  ) async {
    selectedComponents[componentType]?.clear();
    swapButtonState(value: true);
    _counter = 0;
    notifyListeners();
  }

  Future<void> removeFromComparison(
    String? componentType,
    BaseComponent component,
  ) async {
    final index = selectedComponents[componentType]
        ?.indexWhere((element) => element.id == component.id);
    if (index != null && index >= 0) {
      --_counter;
      selectedComponents[componentType]?.removeAt(index);
      swapButtonState(value: true);
    }
    notifyListeners();
  }

  int getCounter() {
    return _counter;
  }
}
