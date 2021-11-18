import 'package:the_postraves_package/client/http_method_enum.dart';
import 'package:the_postraves_package/client/localized_request.dart';
import 'package:the_postraves_package/client/remote_request.dart';
import 'package:the_postraves_package/constants/server_constants.dart';
import 'package:the_postraves_package/dto/followable_type.dart';
import 'package:the_postraves_package/models/related_to_place/scene.dart';
import 'package:the_postraves_package/models/shorts/event_short.dart';
import 'package:the_postraves_package/models/shorts/place_short.dart';

abstract class PlaceRemoteDataSource {
  Future<List<Scene>> fetchScenesForPlaceById({
    required int id,
    required Map<String, String> httpHeaders,
  });

  Future<List<EventShort>> fetchEventsForPlaceById({
    required int id,
    required Map<String, String> httpHeaders,
  });

  Future<List<PlaceShort>> searchByName(
      {required String searchValue, required Map<String, String> httpHeaders});

  Future<void> saveOrUpdateScenes({
    required int placeId,
    required List<Scene> scenes,
    required Map<String, String> httpHeaders,
  });
}

class PlaceRemoteDataSourceImpl implements PlaceRemoteDataSource {
  final RemoteRequest _remoteRequest;
  final LocalizedGetRequest _localizedGetRequest;

  PlaceRemoteDataSourceImpl(
    this._remoteRequest,
    this._localizedGetRequest,
  );

  @override
  Future<List<EventShort>> fetchEventsForPlaceById(
      {required int id, required Map<String, String> httpHeaders}) async {
    final decodedResponse = await _localizedGetRequest(
        endpointWithPath: 'place/public/$id/events',
        httpHeaders: httpHeaders) as List<dynamic>?;
    return decodedResponse?.map((json) => EventShort.fromJson(json)).toList() ??
        [];
  }

  @override
  Future<List<Scene>> fetchScenesForPlaceById(
      {required int id, required Map<String, String> httpHeaders}) async {
    final decodedResponse = await _localizedGetRequest(
        endpointWithPath: 'place/public/$id/scenes',
        httpHeaders: httpHeaders) as List<dynamic>?;
    return decodedResponse?.map((json) => Scene.fromJson(json)).toList() ?? [];
  }

  @override
  Future<List<PlaceShort>> searchByName(
      {required String searchValue,
      required Map<String, String> httpHeaders}) async {
    final requestPlaces = _localizedGetRequest(
      endpointWithPath:
          '${FollowableType.PLACE.endpoint}/public/search/$searchValue',
      httpHeaders: httpHeaders,
    );

    final responsePlaces = await requestPlaces as List<dynamic>?;

    final decodedPlaces =
        responsePlaces?.map((json) => PlaceShort.fromJson(json)).toList() ?? [];

    return decodedPlaces;
  }

  @override
  Future<void> saveOrUpdateScenes({
    required int placeId,
    required List<Scene> scenes,
    required Map<String, String> httpHeaders,
  }) async {
    await _remoteRequest(
      httpMethod: HttpMethod.put,
      host: ServerConstants.apiHost,
      hostPath: ServerConstants.apiPath,
      endpointWithPath: '${FollowableType.PLACE.endpoint}/$placeId/scenes',
      httpHeaders: httpHeaders,
      body: scenes.map((el) => el.toJson()).toList(),
    );
    return;
  }
}
