import 'dart:core';

import 'package:build_pc_mobile/build_pc/domain/entities/build_pc.dart';
import 'package:build_pc_mobile/common/domain/entities/ram/ram.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/hdd/hdd.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/ssd/ssd.dart';
import 'package:flutter/material.dart';

class SelectedComponentForBuildNotifier extends ChangeNotifier {
  String? _modelName;

  BuildPc? _buildPc;

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
    "id": null,
    "nameBuild": "Draft",
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

  BuildPc? get buildPc => _buildPc;

  bool get checkAddProcessor => _checkAddProcessor;

  bool get checkAddMotherboard => _checkAddMotherboard;

  bool get checkAddCooler => _checkAddCooler;

  bool get checkAddGPU => _checkAddGPU;

  bool get checkAddMemory => _checkAddMemory;

  bool get checkAddHdd => _checkAddHdd;

  bool get checkAddSsd => _checkAddSsd;

  bool get checkAddPowerSupply => _checkAddPowerSupply;

  bool get checkAddCase => _checkAddCase;

  set buildPc(BuildPc? value) {
    _buildPc = value;
    notifyListeners();
  }

  Future<void> setModelName(String? value) async {
    _modelName = value;
    notifyListeners();
  }

  void swapButtonState({
    required bool value,
    required String? variableName,
  }) {
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

  Future<void> clearAddToBuildPcComponents() async {
    addToBuildPcComponents.clear();
    notifyListeners();
  }

  Future<void> clearSwapButton({required bool clear}) async {
    if (clear) {
      _checkAddProcessor = true;
      _checkAddMotherboard = true;
      _checkAddCooler = true;
      _checkAddGPU = true;
      _checkAddMemory = true;
      _checkAddHdd = true;
      _checkAddSsd = true;
      _checkAddPowerSupply = true;
      _checkAddCase = true;
    }
    notifyListeners();
  }

  Future<void> addToComparison(String componentType, dynamic component) async {
    switch (componentType) {
      case "memory":
        addToBuildPcComponents[componentType] = [component as Ram];
        break;
      case "hdd":
        addToBuildPcComponents[componentType] = [component as Hdd];
        break;
      case "ssd":
        addToBuildPcComponents[componentType] = [component as Ssd];
        break;
      default:
        addToBuildPcComponents[componentType] = component;
    }

    swapButtonState(value: false, variableName: componentType);
    notifyListeners();
  }

  String? getComponentName<T>(List<T>? list) {
    if (list != null && list.isNotEmpty) {
      for (final component in list) {
        if (component is Ram) {
          return component.name;
        } else if (component is Hdd) {
          return component.name;
        } else if (component is Ssd) {
          return component.name;
        }
      }
    }

    return null;
  }

  Future<void> removeFromComparison(
    String componentType,
  ) async {
    addToBuildPcComponents[componentType] = null;
    swapButtonState(value: true, variableName: componentType);
    notifyListeners();
  }
}
