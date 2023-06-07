import 'dart:async';
import 'dart:io';

import 'package:build_pc_mobile/auth/utils/auth_credentials_storage.dart';
import 'package:build_pc_mobile/common/constants/api.dart';
import 'package:build_pc_mobile/common/domain/entities/pc_case/pc_case.dart';
import 'package:build_pc_mobile/common/domain/repositories/pc_case_repository.dart';
import 'package:build_pc_mobile/common/utils/http_response_utils.dart';
import 'package:http/http.dart' as http;

class PcCaseRepositoryImpl implements PcCaseRepository {
  static const _fetchPcCasePath = '/api/all/pccase';

  final _client = http.Client();

  final _pcCaseController = StreamController<List<PcCase>>();

  @override
  Stream<List<PcCase>> get pcCaseStream =>
      _pcCaseController.stream;

  @override
  Future<void> fetchPcCase() async {
    final savedCredentials = await AuthCredentialsStorage.savedCredentials;
    final headers = Api.headers(savedCredentials.tokenAccess);
    final requestUri = Uri.http(Api.baseUrl, _fetchPcCasePath);
    final response = await _client.get(requestUri, headers: headers);
    _processPcCaseResponse(response);
  }

  void _processPcCaseResponse(http.Response response) {
    if (response.statusCode == HttpStatus.ok) {
      _processPcCaseResponseOk(response);
    } else {
      HttpResponseUtils.processStatusCodeFailed(response);
    }
  }

  void _processPcCaseResponseOk(http.Response response) {
    final decodedResponse = HttpResponseUtils.parseHttpResponseAsList(response);
    final pcCase = decodedResponse
        .map(
          (row) => PcCase.fromJson(row),
    )
        .toList();
    _pcCaseController.sink.add(pcCase);
  }

  void dispose() {
    _pcCaseController.close();
  }
}