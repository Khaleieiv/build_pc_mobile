import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:build_pc_mobile/auth/utils/auth_credentials_storage.dart';
import 'package:build_pc_mobile/build_pc/domain/repositories/components_for_build_pc_repository.dart';
import 'package:build_pc_mobile/common/constants/api.dart';
import 'package:build_pc_mobile/common/domain/entities/cpu/cpu.dart';
import 'package:build_pc_mobile/common/utils/http_response_utils.dart';
import 'package:http/http.dart' as http;

class ComponentsForBuildPcRepositoryImpl
    extends ComponentsForBuildPcRepository {
  final _fetchCpuListUserPath = '/api/user/buildPc';
  final _client = http.Client();

  final _currentCpuListController = StreamController<List<CPU>?>();

  @override
  Stream<List<CPU>?>? get cpuListForBuild => _currentCpuListController.stream;

  @override
  Future<void> fetchCpuListComponents(int? id) async {
    final savedCredentials = await AuthCredentialsStorage.savedCredentials;
    final headers = Api.headers(savedCredentials.tokenAccess);
    final requestUri =
        Uri.http(Api.baseUrl, "$_fetchCpuListUserPath/processor/$id");
    final response = await _client.get(
      requestUri,
      headers: headers,
    );
    _processCpuListResponse(response);
  }

  @override
  Future<void> updateCpuComponents(CPU cpu, int id) async {
    final params = {
      'processor': cpu.toJson(),
    };
    final savedCredentials = await AuthCredentialsStorage.savedCredentials;
    final headers = Api.headers(savedCredentials.tokenAccess);
    final requestUri =
        Uri.http(Api.baseUrl, "$_fetchCpuListUserPath/processor/$id");
    await _client.put(
      requestUri,
      headers: headers,
      body: jsonEncode(params),
    );
  }

  @override
  Future<void> deleteCpuComponents(int id) async {
    final savedCredentials = await AuthCredentialsStorage.savedCredentials;
    final headers = Api.headers(savedCredentials.tokenAccess);
    final requestUri =
        Uri.http(Api.baseUrl, "$_fetchCpuListUserPath/processor/$id");
    await _client.delete(
      requestUri,
      headers: headers,
    );
  }

  void _processCpuListResponse(http.Response response) {
    if (response.statusCode == HttpStatus.ok) {
      _processCpuListResponseOk(response);
    } else {
      HttpResponseUtils.processStatusCodeFailed(response);
    }
  }

  void _processCpuListResponseOk(http.Response response) {
    final decodedResponse = HttpResponseUtils.parseHttpResponseAsList(response);
    final cpu = decodedResponse
        .map(
          (row) => CPU.fromJson(row),
        )
        .toList();
    _currentCpuListController.sink.add(cpu);
  }

  void dispose() {
    _currentCpuListController.close();
  }
}
