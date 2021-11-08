import 'package:the_postraves_package/client/localized_request.dart';
import 'package:the_postraves_package/models/related_to_place/scene.dart';
import 'package:the_postraves_package/models/shorts/event_short.dart';

abstract class PlaceRemoteDataSource {
  Future<List<Scene>> fetchScenesForPlaceById({
    required int id,
    required Map<String, String> httpHeaders,
  });

  Future<List<EventShort>> fetchEventsForPlaceById({
    required int id,
    required Map<String, String> httpHeaders,
  });
}

class PlaceRemoteDataSourceImpl implements PlaceRemoteDataSource {
  final LocalizedGetRequest _localizedGetRequest;

  PlaceRemoteDataSourceImpl(this._localizedGetRequest);

  @override
  Future<List<EventShort>> fetchEventsForPlaceById(
      {required int id, required Map<String, String> httpHeaders}) async {
    final decodedResponse =
        await _localizedGetRequest(
            endpointWithPath: 'place/public/$id/events',
            httpHeaders: httpHeaders) as List<dynamic>?;
    return decodedResponse?.map((json) => EventShort.fromJson(json)).toList() ??
        [];
  }

  @override
  Future<List<Scene>> fetchScenesForPlaceById(
      {required int id, required Map<String, String> httpHeaders}) async {
    final decodedResponse =
        await _localizedGetRequest(
            endpointWithPath: 'place/public/$id/scenes',
            httpHeaders: httpHeaders) as List<dynamic>?;
    return decodedResponse?.map((json) => Scene.fromJson(json)).toList() ?? [];
  }
}