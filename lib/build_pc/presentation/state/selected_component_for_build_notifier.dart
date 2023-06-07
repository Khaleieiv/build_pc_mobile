import 'dart:core';

import 'package:build_pc_mobile/common/domain/entities/ram/ram.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/hdd/hdd.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/ssd/ssd.dart';
import 'package:flutter/material.dart';

class SelectedComponentForBuildNotifier extends ChangeNotifier {

  String? _modelName;

  bool _checkAddProcessor = true;
  bool _checkAddMotherboard = true;
  bool _checkAddCooler = true;
  bool _checkAddGPU = true;
  bool _checkAddMemory = true;
  bool _checkAddHdd = true;
  bool _checkAddSsd = true;
  bool _checkAddPowerSupply = true;
  bool _checkAddCase = true;

  Map<String, dynamic> addToBuildPcComponents = {
    "nameBuild": null,
    "processor": null,
    "motherboard": null,
    "graphic_card": null,
    "memory": <Ram>[],
    "ssd": <Ssd>[],
    "hdd": <Hdd>[],
    "cooler": null,
    "power_supply": null,
    "case": null,
  };

  String? get modelName => _modelName;

  bool get checkAddProcessor => _checkAddProcessor;

  bool get checkAddMotherboard => _checkAddMotherboard;

  bool get checkAddCooler => _checkAddCooler;

  bool get checkAddGPU => _checkAddGPU;

  bool get checkAddMemory => _checkAddMemory;

  bool get checkAddHdd => _checkAddHdd;

  bool get checkAddSsd => _checkAddSsd;

  bool get checkAddPowerSupply => _checkAddPowerSupply;

  bool get checkAddCase => _checkAddCase;

  set modelName(String? value) {
    _modelName = value;
    notifyListeners();
  }

  void swapButtonState({required bool value, required String? variableName}) {
    switch (variableName) {
      case 'processor':
        if (_checkAddProcessor == value) return;
        _checkAddProcessor = value;
        break;
      case 'motherboard':
        if (_checkAddMotherboard == value) return;
        _checkAddMotherboard = value;
        break;
      case 'cooler':
        if (_checkAddCooler == value) return;
        _checkAddCooler = value;
        break;
      case 'graphic_card':
        if (_checkAddGPU == value) return;
        _checkAddGPU = value;
        break;
      case 'memory':
        if (_checkAddMemory == value) return;
        _checkAddMemory = value;
        break;
      case 'hdd':
        if (_checkAddHdd == value) return;
        _checkAddHdd = value;
        break;
      case 'ssd':
        if (_checkAddSsd == value) return;
        _checkAddSsd = value;
        break;
      case 'power_supply':
        if (_checkAddPowerSupply == value) return;
        _checkAddPowerSupply = value;
        break;
      case 'case':
        if (_checkAddCase == value) return;
        _checkAddCase = value;
        break;
      default:
        return;
    }

    notifyListeners();
  }

  Future<void> addToComparison(
      String componentType,
      dynamic component,
      ) async {
    addToBuildPcComponents[componentType] = component;
    swapButtonState(value: false, variableName: componentType);
    notifyListeners();
  }

  Future<void> removeFromComparison(
      String componentType,
      ) async {
    addToBuildPcComponents[componentType] = null;
    swapButtonState(value: true, variableName: componentType);
    notifyListeners();
  }
}
