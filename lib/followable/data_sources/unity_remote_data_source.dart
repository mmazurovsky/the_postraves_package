import 'dart:convert';

import 'package:the_postraves_package/client/http_method_enum.dart';
import 'package:the_postraves_package/client/localized_request.dart';
import 'package:the_postraves_package/client/remote_request.dart';
import 'package:the_postraves_package/constants/server_constants.dart';
import 'package:the_postraves_package/dto/followable_type.dart';
import 'package:the_postraves_package/models/shorts/artist_short.dart';
import 'package:the_postraves_package/models/shorts/event_short.dart';
import 'package:the_postraves_package/models/shorts/unity_short.dart';

abstract class UnityRemoteDataSource {
  Future<List<ArtistShort>> fetchArtistsForUnityById({
    required int id,
    required Map<String, String> httpHeaders,
  });

  Future<List<EventShort>> fetchEventsForUnityById({
    required int id,
    required Map<String, String> httpHeaders,
  });

  Future<List<UnityShort>> searchByName(
      {required String searchValue, required Map<String, String> httpHeaders});

  Future<void> saveOrUpdateArtists({
    required int unityId,
    required List<int> artists,
    required Map<String, String> httpHeaders,
  });
}

class UnityRemoteDataSourceImpl implements UnityRemoteDataSource {
  final RemoteRequest _remoteRequest;
  final LocalizedGetRequest _localizedGetRequest;
  final ServerConstantsAbstract _serverConstantsAbstract;

  UnityRemoteDataSourceImpl(
    this._remoteRequest,
    this._localizedGetRequest,
    this._serverConstantsAbstract,
  );

  @override
  Future<List<EventShort>> fetchEventsForUnityById(
      {required int id, required Map<String, String> httpHeaders}) async {
    final decodedResponse = await _localizedGetRequest(
        endpointWithPath: 'unity/public/$id/events',
        httpHeaders: httpHeaders) as List<dynamic>?;
    return decodedResponse?.map((json) => EventShort.fromJson(json)).toList() ??
        [];
  }

  @override
  Future<List<ArtistShort>> fetchArtistsForUnityById(
      {required int id, required Map<String, String> httpHeaders}) async {
    final decodedResponse = await _localizedGetRequest(
        endpointWithPath: 'unity/public/$id/artists',
        httpHeaders: httpHeaders) as List<dynamic>?;
    return decodedResponse
            ?.map((json) => ArtistShort.fromJson(json))
            .toList() ??
        [];
  }

  @override
  Future<List<UnityShort>> searchByName(
      {required String searchValue,
      required Map<String, String> httpHeaders}) async {
    final requestUnities = _localizedGetRequest(
      endpointWithPath:
          '${FollowableType.UNITY.endpoint}/public/search/$searchValue',
      httpHeaders: httpHeaders,
    );

    final responseUnities = await requestUnities as List<dynamic>?;

    final decodedUnities =
        responseUnities?.map((json) => UnityShort.fromJson(json)).toList() ??
            [];

    return decodedUnities;
  }

  @override
  Future<void> saveOrUpdateArtists({
    required int unityId,
    required List<int> artists,
    required Map<String, String> httpHeaders,
  }) async {
    await _remoteRequest(
      isHttps: _serverConstantsAbstract.isHttps,
      httpMethod: HttpMethod.put,
      host: _serverConstantsAbstract.apiHost,
      hostPath: _serverConstantsAbstract.apiPath,
      endpointWithPath: '${FollowableType.UNITY.endpoint}/$unityId/artists',
      httpHeaders: httpHeaders,
      body: artists,
    );
    return;
  }
}
