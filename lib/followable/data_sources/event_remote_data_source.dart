import 'dart:convert';

import 'package:the_postraves_package/client/http_method_enum.dart';
import 'package:the_postraves_package/client/localized_request.dart';
import 'package:the_postraves_package/client/remote_request.dart';
import 'package:the_postraves_package/constants/server_constants.dart';
import 'package:the_postraves_package/dto/followable_type.dart';
import 'package:the_postraves_package/models/related_to_event/timetable_for_scene.dart';
import 'package:the_postraves_package/models/shorts/artist_short.dart';
import 'package:the_postraves_package/models/shorts/event_short.dart';
import 'package:the_postraves_package/models/shorts/unity_short.dart';
import 'package:the_postraves_package/models/write/timetable_performance_write.dart';

abstract class EventRemoteDataSource {
  Future<List<UnityShort>> fetchOrganizersForEventById({
    required int id,
    required Map<String, String> httpHeaders,
  });

  Future<List<ArtistShort>> fetchLineupForEventById({
    required int id,
    required Map<String, String> httpHeaders,
  });

  Future<List<TimetableForScene>> fetchTimetableForEventById({
    required int id,
    required Map<String, String> httpHeaders,
  });

  Future<List<EventShort>> searchByName({
    required String searchValue,
    required Map<String, String> httpHeaders,
  });

  Future<void> saveOrUpdateOrganizers({
    required int eventId,
    required List<int> orgsIds,
    required Map<String, String> httpHeaders,
  });

  Future<void> saveOrUpdateTimetable({
    required int eventId,
    required List<TimetablePerformanceWrite> timetable,
    required Map<String, String> httpHeaders,
  });
}

class EventRemoteDataSourceImpl implements EventRemoteDataSource {
  final ServerConstantsAbstract _serverConstantsAbstract;
  final RemoteRequest _remoteRequest;
  final LocalizedGetRequest _localizedGetRequest;

  EventRemoteDataSourceImpl(
    this._remoteRequest,
    this._localizedGetRequest,
    this._serverConstantsAbstract,
  );

  @override
  Future<List<ArtistShort>> fetchLineupForEventById(
      {required int id, required Map<String, String> httpHeaders}) async {
    final decodedResponse = await _localizedGetRequest(
        endpointWithPath: 'event/public/$id/lineup',
        httpHeaders: httpHeaders) as List<dynamic>?;
    final list =
        decodedResponse?.map((json) => ArtistShort.fromJson(json)).toList() ??
            [];
    return list;
  }

  @override
  Future<List<UnityShort>> fetchOrganizersForEventById(
      {required int id, required Map<String, String> httpHeaders}) async {
    final decodedResponse = await _localizedGetRequest(
        endpointWithPath: 'event/public/$id/organizers',
        httpHeaders: httpHeaders) as List<dynamic>?;
    final list =
        decodedResponse?.map((json) => UnityShort.fromJson(json)).toList() ??
            [];
    return list;
  }

  @override
  Future<List<TimetableForScene>> fetchTimetableForEventById(
      {required int id, required Map<String, String> httpHeaders}) async {
    final decodedResponse = await _localizedGetRequest(
        endpointWithPath: 'event/public/$id/timetable',
        httpHeaders: httpHeaders) as List<dynamic>?;
    final list = decodedResponse
            ?.map((json) => TimetableForScene.fromJson(json))
            .toList() ??
        [];
    return list;
  }

  @override
  Future<List<EventShort>> searchByName(
      {required String searchValue,
      required Map<String, String> httpHeaders}) async {
    final requestEvents = _localizedGetRequest(
      endpointWithPath:
          '${FollowableType.EVENT.endpoint}/public/search/$searchValue',
      httpHeaders: httpHeaders,
    );

    final responseEvents = await requestEvents as List<dynamic>?;
    final decodedEvents =
        responseEvents?.map((json) => EventShort.fromJson(json)).toList() ?? [];
    return decodedEvents;
  }

  @override
  Future<void> saveOrUpdateOrganizers({
    required int eventId,
    required List<int> orgsIds,
    required Map<String, String> httpHeaders,
  }) async {
    await _remoteRequest(
      isHttps: _serverConstantsAbstract.isHttps,
      httpMethod: HttpMethod.put,
      host: _serverConstantsAbstract.apiHost,
      hostPath: _serverConstantsAbstract.apiPath,
      endpointWithPath: '${FollowableType.EVENT.endpoint}/$eventId/organizers',
      httpHeaders: httpHeaders,
      body: orgsIds,
    );
    return;
  }

  @override
  Future<void> saveOrUpdateTimetable({
    required int eventId,
    required List<TimetablePerformanceWrite> timetable,
    required Map<String, String> httpHeaders,
  }) async {
    await _remoteRequest(
      isHttps: _serverConstantsAbstract.isHttps,
      httpMethod: HttpMethod.put,
      host: _serverConstantsAbstract.apiHost,
      hostPath: _serverConstantsAbstract.apiPath,
      endpointWithPath: '${FollowableType.EVENT.endpoint}/$eventId/timetable',
      httpHeaders: httpHeaders,
      body: timetable.map((el) => el.toJson()).toList(),
    );
    return;
  }
}
