import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:build_pc_mobile/common/domain/entities/cooler/cooler.dart';
import 'package:build_pc_mobile/common/domain/entities/cpu/cpu.dart';
import 'package:build_pc_mobile/common/domain/entities/gpu/gpu.dart';
import 'package:build_pc_mobile/common/domain/entities/motherboard/motherboard.dart';
import 'package:build_pc_mobile/common/domain/entities/pc_case/pc_case.dart';
import 'package:build_pc_mobile/common/domain/entities/power_supply/power_supply.dart';
import 'package:build_pc_mobile/common/domain/entities/ram/ram.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/hdd/hdd.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/ssd/ssd.dart';
import 'package:build_pc_mobile/common/utils/custom_exception.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class HttpResponseUtils {
  static Map<String, dynamic> parseHttpResponse(Response response) {
    final decodedString = utf8.decode(response.bodyBytes);

    return jsonDecode(decodedString) as Map<String, dynamic>;
  }

  static List<Map<String, dynamic>> parseHttpResponseAsList(Response response) {
    final decodedString = utf8.decode(response.bodyBytes);
    final dynamicList = jsonDecode(decodedString) as List<dynamic>;

    return dynamicList.map((e) => e as Map<String, dynamic>).toList();
  }

  static void processStatusCodeFailed(http.Response response) {
    final bodyMap = HttpResponseUtils.parseHttpResponse(response);
    final parsedReason = bodyMap["message"];
    throw CustomResponseException(
      parsedReason.toString(),
    );
  }

  static void processListResponse(
    http.Response response,
    String model,
    StreamController<List<dynamic>?> currentListController,
  ) {
    if (response.statusCode == HttpStatus.ok) {
      processListResponseOk(
        response,
        model,
        currentListController,
      );
    } else {
      HttpResponseUtils.processStatusCodeFailed(response);
    }
  }

  static void processResponse(
    http.Response response,
    String model,
    StreamController<dynamic> currentListController,
  ) {
    if (response.statusCode == HttpStatus.ok) {
      processResponseOk(
        response,
        model,
        currentListController,
      );
    } else {
      HttpResponseUtils.processStatusCodeFailed(response);
    }
  }

  static void processListResponseOk(
    http.Response response,
    String model,
    StreamController<List<dynamic>?> currentListController,
  ) {
    final decodedResponse = HttpResponseUtils.parseHttpResponseAsList(response);
    final List<dynamic>? componentList;
    switch (model) {
      case 'cpu':
        componentList = decodedResponse
            .map(
              (row) => CPU.fromJson(row),
        )
            .toList();
        break;
      case 'motherboard':
        componentList = decodedResponse
            .map(
              (row) => Motherboard.fromJson(row),
        )
            .toList();
        break;
      case 'cooler':
        componentList = decodedResponse
            .map(
              (row) => Cooler.fromJson(row),
        )
            .toList();
        break;
      case 'graphicCard':
        componentList = decodedResponse
            .map(
              (row) => GPU.fromJson(row),
        )
            .toList();
        break;
      case 'memory':
        componentList = decodedResponse
            .map(
              (row) => Ram.fromJson(row),
        )
            .toList();
        break;
      case 'hdd':
        componentList = decodedResponse
            .map(
              (row) => Hdd.fromJson(row),
        )
            .toList();
        break;
      case 'ssd':
        componentList = decodedResponse
            .map(
              (row) => Ssd.fromJson(row),
        )
            .toList();
        break;
      case 'powerSupply':
        componentList = decodedResponse
            .map(
              (row) => PowerSupply.fromJson(row),
        )
            .toList();
        break;
      case 'case':
        componentList = decodedResponse
            .map(
              (row) => PcCase.fromJson(row),
        )
            .toList();
        break;
      default:
        return;
    }
    currentListController.sink.add(componentList);
  }

  static void processResponseOk(
    http.Response response,
    String model,
    StreamController<dynamic> currentListController,
  ) {
    final decodedResponse = HttpResponseUtils.parseHttpResponse(response);
    final dynamic component;
    switch (model) {
      case 'cpu':
        component = CPU.fromJson(decodedResponse);
        break;
      case 'motherboard':
        component = Motherboard.fromJson(decodedResponse);
        break;
      case 'cooler':
        component = Cooler.fromJson(decodedResponse);
        break;
      case 'graphicCard':
        component = GPU.fromJson(decodedResponse);
        break;
      case 'ram':
        component = Ram.fromJson(decodedResponse);
        break;
      case 'hdd':
        component = Hdd.fromJson(decodedResponse);
        break;
      case 'ssd':
        component = Ssd.fromJson(decodedResponse);
        break;
      case 'powerSupply':
        component = PowerSupply.fromJson(decodedResponse);
        break;
      case 'case':
        component = PcCase.fromJson(decodedResponse);
        break;
      default:
        return;
    }
    currentListController.sink.add(component);
  }
}
