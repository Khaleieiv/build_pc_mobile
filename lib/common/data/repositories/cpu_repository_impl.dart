import 'dart:async';
import 'dart:io';

import 'package:build_pc_mobile/auth/utils/auth_credentials_storage.dart';
import 'package:build_pc_mobile/common/constants/api.dart';
import 'package:build_pc_mobile/common/domain/entities/cpu/cpu.dart';
import 'package:build_pc_mobile/common/domain/repositories/cpu_repository.dart';
import 'package:build_pc_mobile/common/utils/http_response_utils.dart';
import 'package:http/http.dart' as http;

class CPURepositoryImpl implements CPURepository {
  static const _fetchCpuPath = '/api/all/processor';

  final _client = http.Client();

  final _cpuController = StreamController<List<CPU>>();

  @override
  Stream<List<CPU>> get cpuStream => _cpuController.stream;

  @override
  Future<void> fetchCPU() async {
    final savedCredentials = await AuthCredentialsStorage.savedCredentials;
    final headers = Api.headers(savedCredentials.tokenAccess);
    final requestUri = Uri.http(Api.baseUrl, _fetchCpuPath);
    final response = await _client.get(requestUri, headers: headers);
    _processCPUResponse(response);
  }

  void _processCPUResponse(http.Response response) {
    if (response.statusCode == HttpStatus.ok) {
      _processCPUResponseOk(response);
    } else {
      HttpResponseUtils.processStatusCodeFailed(response);
    }
  }

  void _processCPUResponseOk(http.Response response) {
    final decodedResponse = HttpResponseUtils.parseHttpResponseAsList(response);
    final cpu = decodedResponse
        .map(
          (row) => CPU.fromJson(row),
        )
        .toList();
    _cpuController.sink.add(cpu);
  }

  void dispose() {
    _cpuController.close();
  }
}
