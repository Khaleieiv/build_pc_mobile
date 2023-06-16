import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:build_pc_mobile/auth/utils/user_preferences.dart';
import 'package:build_pc_mobile/build_pc/domain/entities/build_pc.dart';
import 'package:build_pc_mobile/build_pc/domain/repositories/build_pc_repository.dart';
import 'package:build_pc_mobile/common/constants/api.dart';
import 'package:build_pc_mobile/common/utils/http_response_utils.dart';
import 'package:http/http.dart' as http;


class BuildPcRepositoryImpl extends BuildPcRepository {
  final _fetchBuildPcListUserPath = '/api/user/buildPc';
  final _client = http.Client();

  final _currentBuildPcListUserController = StreamController<List<BuildPc>?>();
  final _currentBuildPcUserController = StreamController<BuildPc?>();

  @override
  Stream<BuildPc?> get currentBuildPc => _currentBuildPcUserController.stream;

  @override
  Stream<List<BuildPc>?>? get currentListBuildPc =>
      _currentBuildPcListUserController.stream;

  @override
  Future<void> createBuildPcUserListComponents() async {
    final requestUri = Uri.http(Api.baseUrl, _fetchBuildPcListUserPath);
    final response =
        await _client.post(requestUri, headers:await Api.headers());
    _processBuildPcUserResponse(response);
  }

  @override
  Future<BuildPc?> getBuildPcUserComponents(int? id) async {
    final requestUri = Uri.http(Api.baseUrl, "$_fetchBuildPcListUserPath/$id");
    final response =
        await _client.get(requestUri, headers:await Api.headers());

    if (response.statusCode == HttpStatus.ok) {
      return _processGetBuildPcUserResponseOk(response);
    } else {
      HttpResponseUtils.processStatusCodeFailed(response);
    }

    return null;
  }

  @override
  Future<void> updateBuildPcUserListComponents(BuildPc buildPc, int? id) async {
    final params = {
      "id": buildPc.id,
      "nameOfBuild": buildPc.name,
      "user": {"id": buildPc.user?.id},
      "motherboard": buildPc.motherboard,
      "processor": buildPc.cpu,
      "graphicCard": buildPc.gpu,
      "ram": buildPc.ram,
      "powerSupply": buildPc.powerSupply,
      "hdd": buildPc.hdd,
      "ssd": buildPc.ssd,
      "pcCase": buildPc.pcCase,
      "cooler": buildPc.cooler,
      "countOfLikes": buildPc.countOfLikes,
      "ratingId": buildPc.ratingId,
      "totalPrice": buildPc.totalPrice
    };

    final requestUri = Uri.http(Api.baseUrl, "$_fetchBuildPcListUserPath/$id");
    final response = await _client.put(
      requestUri,
      headers: await Api.headers(),
      body: jsonEncode(params),
    );
    _processUpdateBuildPcUserResponse(response);
  }

  @override
  Future<void> fetchBuildPcUserListComponents() async {
    final savedCredentials = await UserPreferences.getToken;

    final headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $savedCredentials',
    };
    final requestUri = Uri.http(Api.baseUrl, _fetchBuildPcListUserPath);
    final response =
        await _client.get(requestUri, headers: headers);
    _processBuildPcResponse(response);
  }

  @override
  Future<void> deleteBuildPcUserListComponents(int? id) async {
    final requestUri = Uri.http(Api.baseUrl, "$_fetchBuildPcListUserPath/$id");
    await _client.delete(
      requestUri,
      headers: await Api.headers(),
    );
  }

  void _processBuildPcUserResponse(http.Response response) {
    if (response.statusCode == HttpStatus.ok) {
      _processBuildPcUserResponseOk(response);
    } else {
      HttpResponseUtils.processStatusCodeFailed(response);
    }
  }

  void _processBuildPcUserResponseOk(http.Response response) {
    final decodedResponse = HttpResponseUtils.parseHttpResponse(response);
    final buildPc = BuildPc.fromJson(decodedResponse);
    _currentBuildPcUserController.sink.add(buildPc);
  }

  BuildPc _processGetBuildPcUserResponseOk(http.Response response) {
    final decodedResponse = HttpResponseUtils.parseHttpResponse(response);

    return BuildPc.fromJson(decodedResponse);
  }

  void _processUpdateBuildPcUserResponse(http.Response response) {
    if (response.statusCode == HttpStatus.ok) {
      _processUpdateBuildPcUserResponseOk(response);
    } else {
      HttpResponseUtils.processStatusCodeFailed(response);
    }
  }

  void _processUpdateBuildPcUserResponseOk(http.Response response) {
    final decodedResponse = HttpResponseUtils.parseHttpResponse(response);
    final buildPc = BuildPc.fromJson(decodedResponse);
    _currentBuildPcUserController.sink.add(buildPc);
  }

  void _processBuildPcResponse(http.Response response) {
    if (response.statusCode == HttpStatus.ok) {
      _processBuildPcResponseOk(response);
    } else {
      HttpResponseUtils.processStatusCodeFailed(response);
    }
  }

  void _processBuildPcResponseOk(http.Response response) {
    final decodedResponse = HttpResponseUtils.parseHttpResponseAsList(response);
    final buildPc = decodedResponse
        .map(
          (row) => BuildPc.fromJson(row),
        )
        .toList();
    _currentBuildPcListUserController.sink.add(buildPc);
  }

  void dispose() {
    _currentBuildPcListUserController.close();
    _currentBuildPcUserController.close();
  }
}
