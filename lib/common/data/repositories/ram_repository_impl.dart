import 'dart:async';
import 'dart:io';

import 'package:build_pc_mobile/auth/utils/auth_credentials_storage.dart';
import 'package:build_pc_mobile/common/constants/api.dart';
import 'package:build_pc_mobile/common/domain/entities/ram/ram.dart';
import 'package:build_pc_mobile/common/domain/repositories/ram_repository.dart';
import 'package:build_pc_mobile/common/utils/http_response_utils.dart';
import 'package:http/http.dart' as http;

class RamRepositoryImpl implements RamRepository {
  static const _fetchRamPath = '/api/all/ram';

  final _client = http.Client();

  final _ramController = StreamController<List<Ram>>();

  @override
  Stream<List<Ram>> get ramStream =>
      _ramController.stream;

  @override
  Future<void> fetchRam() async {
    final savedCredentials = await AuthCredentialsStorage.savedCredentials;
    final headers = Api.headers(savedCredentials.tokenAccess);
    final requestUri = Uri.http(Api.baseUrl, _fetchRamPath);
    final response = await _client.get(requestUri, headers: headers);

    _processRamResponse(response);
  }

  void _processRamResponse(http.Response response) {
    if (response.statusCode == HttpStatus.ok) {
      _processRamResponseOk(response);
    } else {
      HttpResponseUtils.processStatusCodeFailed(response);
    }
  }

  void _processRamResponseOk(http.Response response) {
    final decodedResponse = HttpResponseUtils.parseHttpResponseAsList(response);
    final ram = decodedResponse
        .map(
          (row) => Ram.fromJson(row),
    )
        .toList();
    _ramController.sink.add(ram);
  }

  void dispose() {
    _ramController.close();
  }
}
