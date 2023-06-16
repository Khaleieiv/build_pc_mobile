import 'dart:async';
import 'dart:io';

import 'package:build_pc_mobile/common/constants/api.dart';
import 'package:build_pc_mobile/common/domain/entities/motherboard/motherboard.dart';
import 'package:build_pc_mobile/common/domain/repositories/motherboard_repository.dart';
import 'package:build_pc_mobile/common/utils/http_response_utils.dart';
import 'package:http/http.dart' as http;

class MotherboardRepositoryImpl implements MotherboardRepository {
  static const _fetchMotherboardPath = '/api/all/motherboard';

  final _client = http.Client();

  final _motherboardController = StreamController<List<Motherboard>>();

  @override
  Stream<List<Motherboard>> get motherboardStream =>
      _motherboardController.stream;

  @override
  Future<void> fetchMotherboard() async {
    final requestUri = Uri.http(Api.baseUrl, _fetchMotherboardPath);
    final response = await _client.get(requestUri, headers:await Api.headers());
    _processMotherboardResponse(response);
  }

  void _processMotherboardResponse(http.Response response) {
    if (response.statusCode == HttpStatus.ok) {
      _processMotherboardResponseOk(response);
    } else {
      HttpResponseUtils.processStatusCodeFailed(response);
    }
  }

  void _processMotherboardResponseOk(http.Response response) {
    final decodedResponse = HttpResponseUtils.parseHttpResponseAsList(response);
    final motherboard = decodedResponse
        .map(
          (row) => Motherboard.fromJson(row),
        )
        .toList();
    _motherboardController.sink.add(motherboard);
  }

  void dispose() {
    _motherboardController.close();
  }
}
