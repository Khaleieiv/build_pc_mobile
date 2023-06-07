import 'dart:async';
import 'dart:io';

import 'package:build_pc_mobile/auth/utils/auth_credentials_storage.dart';
import 'package:build_pc_mobile/common/constants/api.dart';
import 'package:build_pc_mobile/common/domain/entities/gpu/gpu.dart';
import 'package:build_pc_mobile/common/domain/repositories/gpu_repository.dart';
import 'package:build_pc_mobile/common/utils/http_response_utils.dart';
import 'package:http/http.dart' as http;

class GPURepositoryImpl implements GPURepository {
  static const _fetchGpuPath = '/api/all/gpu';

  final _client = http.Client();

  final _gpuController = StreamController<List<GPU>>();

  @override
  Stream<List<GPU>> get gpuStream => _gpuController.stream;

  @override
  Future<void> fetchGPU() async {
    final savedCredentials = await AuthCredentialsStorage.savedCredentials;
    final headers = Api.headers(savedCredentials.tokenAccess);
    final requestUri = Uri.http(Api.baseUrl, _fetchGpuPath);
    final response = await _client.get(requestUri, headers: headers);
    _processGPUResponse(response);
  }

  void _processGPUResponse(http.Response response) {
    if (response.statusCode == HttpStatus.ok) {
      _processGPUResponseOk(response);
    } else {
      HttpResponseUtils.processStatusCodeFailed(response);
    }
  }

  void _processGPUResponseOk(http.Response response) {
    final decodedResponse = HttpResponseUtils.parseHttpResponseAsList(response);
    final gpu = decodedResponse
        .map(
          (row) => GPU.fromJson(row),
    )
        .toList();
    _gpuController.sink.add(gpu);
  }
  void dispose() {
    _gpuController.close();
  }
}
