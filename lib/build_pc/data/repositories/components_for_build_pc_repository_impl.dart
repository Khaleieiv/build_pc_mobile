import 'dart:async';
import 'dart:convert';

import 'package:build_pc_mobile/build_pc/domain/repositories/components_for_build_pc_repository.dart';
import 'package:build_pc_mobile/common/constants/api.dart';
import 'package:build_pc_mobile/common/domain/entities/cooler/cooler.dart';
import 'package:build_pc_mobile/common/domain/entities/cpu/cpu.dart';
import 'package:build_pc_mobile/common/domain/entities/gpu/gpu.dart';
import 'package:build_pc_mobile/common/domain/entities/motherboard/motherboard.dart';
import 'package:build_pc_mobile/common/domain/entities/pc_case/pc_case.dart';
import 'package:build_pc_mobile/common/domain/entities/power_supply/power_supply.dart';
import 'package:build_pc_mobile/common/domain/entities/ram/ram.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/hdd/hdd.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/ssd/ssd.dart';
import 'package:build_pc_mobile/common/utils/http_response_utils.dart';
import 'package:http/http.dart' as http;

class ComponentsForBuildPcRepositoryImpl
    extends ComponentsForBuildPcRepository {
  final _fetchCpuListUserPath = '/api/user/buildPc';
  final _client = http.Client();

  final _currentCpuListController = StreamController<List<CPU>?>();
  final _currentGpuListController = StreamController<List<GPU>?>();
  final _currentMotherboardListController =
      StreamController<List<Motherboard>?>();
  final _currentCoolerListController = StreamController<List<Cooler>?>();
  final _currentRamListController = StreamController<List<Ram>?>();
  final _currentSsdListController = StreamController<List<Ssd>?>();
  final _currentHddListController = StreamController<List<Hdd>?>();
  final _currentPowerSupplyListController =
      StreamController<List<PowerSupply>?>();
  final _currentPcCaseListController = StreamController<List<PcCase>?>();

  @override
  Stream<List<GPU>?>? get gpuListForBuild => _currentGpuListController.stream;

  @override
  Stream<List<Hdd>?>? get hddListForBuild => _currentHddListController.stream;

  @override
  Stream<List<Motherboard>?>? get motherboardListForBuild =>
      _currentMotherboardListController.stream;

  @override
  Stream<List<PcCase>?>? get pcCaseForBuild =>
      _currentPcCaseListController.stream;

  @override
  Stream<List<PowerSupply>?>? get powerSupplyListForBuild =>
      _currentPowerSupplyListController.stream;

  @override
  Stream<List<Ram>?>? get ramListForBuild => _currentRamListController.stream;

  @override
  Stream<List<Ssd>?>? get ssdListForBuild => _currentSsdListController.stream;

  @override
  Stream<List<Cooler>?>? get coolerListForBuild =>
      _currentCoolerListController.stream;

  @override
  Stream<List<CPU>?>? get cpuListForBuild => _currentCpuListController.stream;

  @override
  Future<void> fetchCpuListComponents(int? id) async {
    final requestUri =
        Uri.http(Api.baseUrl, "$_fetchCpuListUserPath/processor/$id");
    final response = await _client.get(
      requestUri,
      headers: Api.headers(),
    );
    HttpResponseUtils.processListResponse(
      response,
      "cpu",
      _currentCpuListController,
    );
  }

  @override
  Future<void> updateCpuComponents(CPU? cpu, int? id) async {
    final params = {
      'processor': cpu?.toJson(),
    };
    final Uri apiUrl = Uri.parse(
        'http://${Api.baseUrl} $_fetchCpuListUserPath/processor/$id');
    final requestUri =
        Uri.http(Api.baseUrl, "$_fetchCpuListUserPath/processor/$id");
    await _client.put(
      apiUrl,
      headers: Api.headers(),
      body: jsonEncode(params),
    );
    await fetchMotherboardListComponents(id);
  }

  @override
  Future<void> deleteCpuComponents(int? id) async {
    final requestUri =
        Uri.http(Api.baseUrl, "$_fetchCpuListUserPath/processor/$id");
    await _client.delete(
      requestUri,
      headers: Api.headers(),
    );
  }

  @override
  Future<void> fetchMotherboardListComponents(int? id) async {
    final Uri apiUrl = Uri.parse(
        'http://${Api.baseUrl} $_fetchCpuListUserPath/motherboard/$id');
    final requestUri =
        Uri.http(Api.baseUrl, "$_fetchCpuListUserPath/motherboard/$id");
    final response = await _client.get(
      apiUrl,
      headers: Api.headers(),
    );
    HttpResponseUtils.processListResponse(
      response,
      "motherboard",
      _currentMotherboardListController,
    );
  }

  @override
  Future<void> updateMotherboardComponents(
    Motherboard? motherboard,
    int? id,
  ) async {
    final params = {
      'motherboard': motherboard?.toJson(),
    };
    final requestUri =
        Uri.http(Api.baseUrl, "$_fetchCpuListUserPath/motherboard/$id");
    await _client.put(
      requestUri,
      headers: Api.headers(),
      body: jsonEncode(params),
    );
  }

  @override
  Future<void> deleteMotherboardComponents(int? id) async {
    final requestUri =
        Uri.http(Api.baseUrl, "$_fetchCpuListUserPath/motherboard/$id");
    await _client.delete(
      requestUri,
      headers: Api.headers(),
    );
  }

  @override
  Future<void> fetchCoolerListComponents(int? id) async {
    final requestUri =
        Uri.http(Api.baseUrl, "$_fetchCpuListUserPath/cooler/$id");
    final response = await _client.get(
      requestUri,
      headers: Api.headers(),
    );
    HttpResponseUtils.processListResponse(
      response,
      "cooler",
      _currentCoolerListController,
    );
  }

  @override
  Future<void> updateCoolerComponents(Cooler? cooler, int? id) async {
    final params = {
      'cooler': cooler?.toJson(),
    };
    final requestUri =
        Uri.http(Api.baseUrl, "$_fetchCpuListUserPath/cooler/$id");
    await _client.put(
      requestUri,
      headers: Api.headers(),
      body: jsonEncode(params),
    );
  }

  @override
  Future<void> deleteCoolerComponents(int? id) async {
    final requestUri =
        Uri.http(Api.baseUrl, "$_fetchCpuListUserPath/cooler/$id");
    await _client.delete(
      requestUri,
      headers: Api.headers(),
    );
  }

  @override
  Future<void> fetchGpuListComponents(int? id) async {
    final requestUri =
        Uri.http(Api.baseUrl, "$_fetchCpuListUserPath/graphicCard/$id");
    final response = await _client.get(
      requestUri,
      headers: Api.headers(),
    );
    HttpResponseUtils.processListResponse(
      response,
      "graphicCard",
      _currentGpuListController,
    );
  }

  @override
  Future<void> updateGpuComponents(GPU? gpu, int? id) async {
    final params = {
      'graphicCard': gpu?.toJson(),
    };
    final requestUri =
        Uri.http(Api.baseUrl, "$_fetchCpuListUserPath/graphicCard/$id");
    await _client.put(
      requestUri,
      headers: Api.headers(),
      body: jsonEncode(params),
    );
  }

  @override
  Future<void> deleteGpuComponents(int? id) async {
    final requestUri =
        Uri.http(Api.baseUrl, "$_fetchCpuListUserPath/graphicCard/$id");
    await _client.delete(
      requestUri,
      headers: Api.headers(),
    );
  }

  @override
  Future<void> fetchRamListComponents(int? id) async {
    final requestUri = Uri.http(Api.baseUrl, "$_fetchCpuListUserPath/ram/$id");
    final response = await _client.get(
      requestUri,
      headers: Api.headers(),
    );
    HttpResponseUtils.processListResponse(
      response,
      "memory",
      _currentRamListController,
    );
  }

  @override
  Future<void> updateRamComponents(Ram? ram, int? id) async {
    final params = {
      'ram': ram?.toJson(),
    };
    final requestUri = Uri.http(Api.baseUrl, "$_fetchCpuListUserPath/ram/$id");
    await _client.put(
      requestUri,
      headers: Api.headers(),
      body: jsonEncode(params),
    );
  }

  @override
  Future<void> deleteRamComponents(int? id) async {
    final requestUri =
        Uri.http(Api.baseUrl, "$_fetchCpuListUserPath/ram/$id");
    await _client.delete(
      requestUri,
      headers: Api.headers(),
    );
  }

  @override
  Future<void> fetchHddListComponents(int? id) async {
    final requestUri = Uri.http(Api.baseUrl, "$_fetchCpuListUserPath/hdd/$id");
    final response = await _client.get(
      requestUri,
      headers: Api.headers(),
    );
    HttpResponseUtils.processListResponse(
      response,
      "hdd",
      _currentHddListController,
    );
  }

  @override
  Future<void> updateHddComponents(Hdd? hdd, int? id) async {
    final params = {
      'hdd': hdd?.toJson(),
    };
    final requestUri = Uri.http(Api.baseUrl, "$_fetchCpuListUserPath/hdd/$id");
    await _client.put(
      requestUri,
      headers: Api.headers(),
      body: jsonEncode(params),
    );
  }

  @override
  Future<void> deleteHddComponents(int? id) async {
    final requestUri =
        Uri.http(Api.baseUrl, "$_fetchCpuListUserPath/hddAll/$id");
    await _client.delete(
      requestUri,
      headers: Api.headers(),
    );
  }

  @override
  Future<void> fetchSsdComponents(int? id) async {
    final requestUri = Uri.http(Api.baseUrl, "$_fetchCpuListUserPath/ssd/$id");
    final response = await _client.get(
      requestUri,
      headers: Api.headers(),
    );
    HttpResponseUtils.processListResponse(
      response,
      "ssd",
      _currentSsdListController,
    );
  }

  @override
  Future<void> updateSsdComponents(Ssd? ssd, int? id) async {
    final params = {
      'ssd': ssd?.toJson(),
    };
    final requestUri = Uri.http(Api.baseUrl, "$_fetchCpuListUserPath/ssd/$id");
    await _client.put(
      requestUri,
      headers: Api.headers(),
      body: jsonEncode(params),
    );
  }

  @override
  Future<void> deleteSsdComponents(int? id) async {
    final requestUri =
        Uri.http(Api.baseUrl, "$_fetchCpuListUserPath/ssdAll/$id");
    await _client.delete(
      requestUri,
      headers: Api.headers(),
    );
  }

  @override
  Future<void> fetchPcCaseComponents(int? id) async {
    final requestUri = Uri.http(Api.baseUrl, "$_fetchCpuListUserPath/case/$id");
    final response = await _client.get(
      requestUri,
      headers: Api.headers(),
    );
    HttpResponseUtils.processListResponse(
      response,
      "case",
      _currentPcCaseListController,
    );
  }

  @override
  Future<void> updatePcCaseComponents(PcCase? pcCase, int? id) async {
    final params = {
      'case': pcCase?.toJson(),
    };
    final requestUri = Uri.http(Api.baseUrl, "$_fetchCpuListUserPath/case/$id");
    await _client.put(
      requestUri,
      headers: Api.headers(),
      body: jsonEncode(params),
    );
  }

  @override
  Future<void> deletePcCaseComponents(int? id) async {
    final requestUri = Uri.http(Api.baseUrl, "$_fetchCpuListUserPath/case/$id");
    await _client.delete(
      requestUri,
      headers: Api.headers(),
    );
  }

  @override
  Future<void> fetchPowerSupplyComponents(int? id) async {
    final requestUri =
        Uri.http(Api.baseUrl, "$_fetchCpuListUserPath/powerSupply/$id");
    final response = await _client.get(
      requestUri,
      headers: Api.headers(),
    );
    HttpResponseUtils.processListResponse(
      response,
      "powerSupply",
      _currentPowerSupplyListController,
    );
  }

  @override
  Future<void> updatePowerSupplyComponents(
    PowerSupply? powerSupply,
    int? id,
  ) async {
    final params = {
      'powerSupply': powerSupply?.toJson(),
    };
    final requestUri =
        Uri.http(Api.baseUrl, "$_fetchCpuListUserPath/powerSupply/$id");
    await _client.put(
      requestUri,
      headers: Api.headers(),
      body: jsonEncode(params),
    );
  }

  @override
  Future<void> deletePowerSupplyComponents(int? id) async {
    final requestUri =
        Uri.http(Api.baseUrl, "$_fetchCpuListUserPath/powerSupply/$id");
    await _client.delete(
      requestUri,
      headers: Api.headers(),
    );
  }

  void dispose() {
    _currentCpuListController.close();
    _currentPowerSupplyListController.close();
    _currentCoolerListController.close();
    _currentHddListController.close();
    _currentRamListController.close();
    _currentSsdListController.close();
    _currentPcCaseListController.close();
    _currentMotherboardListController.close();
    _currentGpuListController.close();
  }
}
