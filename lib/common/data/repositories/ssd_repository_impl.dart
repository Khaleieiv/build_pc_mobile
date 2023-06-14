import 'dart:async';
import 'dart:io';

import 'package:build_pc_mobile/common/constants/api.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/ssd/ssd.dart';
import 'package:build_pc_mobile/common/domain/repositories/ssd_repository.dart';
import 'package:build_pc_mobile/common/utils/http_response_utils.dart';
import 'package:http/http.dart' as http;

class SsdRepositoryImpl implements SsdRepository {
  static const _fetchRamPath = '/api/all/ssd';

  final _client = http.Client();

  final _ssdController = StreamController<List<Ssd>>();

  @override
  Stream<List<Ssd>> get ssdStream =>
      _ssdController.stream;

  @override
  Future<void> fetchSsd() async {
    final requestUri = Uri.http(Api.baseUrl, _fetchRamPath);
    final response = await _client.get(requestUri, headers: Api.headers());
    _processSsdResponse(response);
  }

  void _processSsdResponse(http.Response response) {
    if (response.statusCode == HttpStatus.ok) {
      _processSsdResponseOk(response);
    } else {
      HttpResponseUtils.processStatusCodeFailed(response);
    }
  }

  void _processSsdResponseOk(http.Response response) {
    final decodedResponse = HttpResponseUtils.parseHttpResponseAsList(response);
    final ssd = decodedResponse
        .map(
          (row) => Ssd.fromJson(row),
    )
        .toList();
    _ssdController.sink.add(ssd);
  }

  void dispose() {
    _ssdController.close();
  }
}
