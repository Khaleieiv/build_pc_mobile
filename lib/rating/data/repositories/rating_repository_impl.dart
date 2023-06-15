import 'dart:async';
import 'dart:io';

import 'package:build_pc_mobile/build_pc/domain/entities/build_pc.dart';
import 'package:build_pc_mobile/common/constants/api.dart';
import 'package:build_pc_mobile/common/utils/http_response_utils.dart';
import 'package:build_pc_mobile/rating/domain/repositories/rating_repository.dart';
import 'package:http/http.dart' as http;

class RatingRepositoryImpl extends RatingRepository {
  final _fetchBuildPcListPath = '/api/user/buildPc/rating';
  final _fetchLikeListPath = '/api/user/like';
  final _client = http.Client();

  final _currentBuildPcListController = StreamController<List<BuildPc>?>();
  final _currentBuildPcController = StreamController<BuildPc?>();

  @override
  Stream<BuildPc?> get currentBuildPc => _currentBuildPcController.stream;

  @override
  Stream<List<BuildPc>?>? get currentListBuildPc =>
      _currentBuildPcListController.stream;

  @override
  Future<void> fetchBuildPcListComponents() async {
    final requestUri = Uri.http(Api.baseUrl, _fetchBuildPcListPath);
    final response = await _client.get(requestUri, headers: Api.headers());
    _processBuildPcListResponse(response);
  }

  void _processBuildPcListResponse(http.Response response) {
    if (response.statusCode == HttpStatus.ok) {
      _processBuildPcListResponseOk(response);
    } else {
      HttpResponseUtils.processStatusCodeFailed(response);
    }
  }

  void _processBuildPcListResponseOk(http.Response response) {
    final decodedResponse = HttpResponseUtils.parseHttpResponseAsList(response);
    final buildPc = decodedResponse
        .map(
          (row) => BuildPc.fromJson(row),
        )
        .toList();
    _currentBuildPcListController.sink.add(buildPc);
  }

  @override
  Future<void> putLike(int? id) async {
    final requestUri = Uri.http(Api.baseUrl, '$_fetchLikeListPath/$id');
    await _client.post(requestUri, headers: Api.headers());
  }

  @override
  Future<bool> isLiked(int? id) async  {
    final requestUri = Uri.http(Api.baseUrl, '$_fetchLikeListPath/$id');
    final response = await _client.get(requestUri, headers: Api.headers());

    return convertStringToBool(response.body);
  }

  bool convertStringToBool(String value) {
    return value.toLowerCase() == 'true';
  }

  @override
  Future<void> deleteLike(int? id) async {
    final requestUri = Uri.http(Api.baseUrl, '$_fetchLikeListPath/$id');
    await _client.delete(requestUri, headers: Api.headers());
  }

  void dispose() {
    _currentBuildPcListController.close();
    _currentBuildPcController.close();
  }
}
