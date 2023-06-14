import 'dart:async';
import 'dart:io';

import 'package:build_pc_mobile/common/constants/api.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/hdd/hdd.dart';
import 'package:build_pc_mobile/common/domain/repositories/hdd_repository.dart';
import 'package:build_pc_mobile/common/utils/http_response_utils.dart';
import 'package:http/http.dart' as http;

class HddRepositoryImpl implements HddRepository {
  static const _fetchHddPath = '/api/all/hdd';

  final _client = http.Client();

  final _hddController = StreamController<List<Hdd>>();

  @override
  Stream<List<Hdd>> get hddStream =>
      _hddController.stream;

  @override
  Future<void> fetchHdd() async {
    final requestUri = Uri.http(Api.baseUrl, _fetchHddPath);
    final response = await _client.get(requestUri, headers: Api.headers());
    _processRamResponse(response);
  }

  void _processRamResponse(http.Response response) {
    if (response.statusCode == HttpStatus.ok) {
      _processHddResponseOk(response);
    } else {
      HttpResponseUtils.processStatusCodeFailed(response);
    }
  }

  void _processHddResponseOk(http.Response response) {
    final decodedResponse = HttpResponseUtils.parseHttpResponseAsList(response);
    final hdd = decodedResponse
        .map(
          (row) => Hdd.fromJson(row),
    )
        .toList();
    _hddController.sink.add(hdd);
  }

  void dispose() {
    _hddController.close();
  }
}
