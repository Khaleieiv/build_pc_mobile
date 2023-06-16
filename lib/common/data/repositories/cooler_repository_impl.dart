import 'dart:async';
import 'dart:io';

import 'package:build_pc_mobile/common/constants/api.dart';
import 'package:build_pc_mobile/common/domain/entities/cooler/cooler.dart';
import 'package:build_pc_mobile/common/domain/repositories/cooler_repository.dart';
import 'package:build_pc_mobile/common/utils/http_response_utils.dart';
import 'package:http/http.dart' as http;

class CoolerRepositoryImpl implements CoolerRepository {
  static const _fetchCoolerPath = '/api/all/cooler';

  final _client = http.Client();

  final _coolerController = StreamController<List<Cooler>>();

  @override
  Stream<List<Cooler>> get coolerStream => _coolerController.stream;

  @override
  Future<void> fetchCooler() async {
    final requestUri = Uri.http(Api.baseUrl, _fetchCoolerPath);
    final response = await _client.get(requestUri, headers:await Api.headers());
    _processCPUResponse(response);
  }

  void _processCPUResponse(http.Response response) {
    if (response.statusCode == HttpStatus.ok) {
      _processCoolerResponseOk(response);
    } else {
      HttpResponseUtils.processStatusCodeFailed(response);
    }
  }

  void _processCoolerResponseOk(http.Response response) {
    final decodedResponse = HttpResponseUtils.parseHttpResponseAsList(response);
    final cpu = decodedResponse
        .map(
          (row) => Cooler.fromJson(row),
    )
        .toList();
    _coolerController.sink.add(cpu);
  }

  void dispose() {
    _coolerController.close();
  }
}
