import 'dart:async';
import 'dart:io';

import 'package:build_pc_mobile/common/constants/api.dart';
import 'package:build_pc_mobile/common/domain/entities/power_supply/power_supply.dart';
import 'package:build_pc_mobile/common/domain/repositories/power_supply_repository.dart';
import 'package:build_pc_mobile/common/utils/http_response_utils.dart';
import 'package:http/http.dart' as http;

class PowerSupplyRepositoryImpl implements PowerSupplyRepository {
  static const _fetchPowerSupplyPath = '/api/all/powerSupply';

  final _client = http.Client();

  final _powerSupplyController = StreamController<List<PowerSupply>>();

  @override
  Stream<List<PowerSupply>> get powerSupplyStream =>
      _powerSupplyController.stream;

  @override
  Future<void> fetchPowerSupply() async {
    final requestUri = Uri.http(Api.baseUrl, _fetchPowerSupplyPath);
    final response =
        await _client.get(requestUri, headers:await Api.headers());
    _processPowerSupplyResponse(response);
  }

  void _processPowerSupplyResponse(http.Response response) {
    if (response.statusCode == HttpStatus.ok) {
      _processPowerSupplyResponseOk(response);
    } else {
      HttpResponseUtils.processStatusCodeFailed(response);
    }
  }

  void _processPowerSupplyResponseOk(http.Response response) {
    final decodedResponse = HttpResponseUtils.parseHttpResponseAsList(response);
    final powerSupply = decodedResponse
        .map(
          (row) => PowerSupply.fromJson(row),
        )
        .toList();
    _powerSupplyController.sink.add(powerSupply);
  }

  void dispose() {
    _powerSupplyController.close();
  }
}
