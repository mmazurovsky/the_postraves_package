import 'package:the_postraves_package/client/localized_request.dart';
import 'package:the_postraves_package/models/shorts/artist_short.dart';
import 'package:the_postraves_package/models/shorts/event_short.dart';

abstract class UnityRemoteDataSource {
  Future<List<ArtistShort>> fetchArtistsForUnityById({
    required int id,
    required Map<String, String> httpHeaders,
  });

  Future<List<EventShort>> fetchEventsForUnityById({
    required int id,
    required Map<String, String> httpHeaders,
  });
}

class UnityRemoteDataSourceImpl implements UnityRemoteDataSource {
  final LocalizedGetRequest _localizedGetRequest;

  UnityRemoteDataSourceImpl(this._localizedGetRequest);

  @override
  Future<List<EventShort>> fetchEventsForUnityById(
      {required int id, required Map<String, String> httpHeaders}) async {
    final decodedResponse =
        await _localizedGetRequest(
            endpointWithPath: 'unity/public/$id/events',
            httpHeaders: httpHeaders) as List<dynamic>?;
    return decodedResponse?.map((json) => EventShort.fromJson(json)).toList() ??
        [];
  }

  @override
  Future<List<ArtistShort>> fetchArtistsForUnityById(
      {required int id, required Map<String, String> httpHeaders}) async {
    final decodedResponse =
        await _localizedGetRequest(
            endpointWithPath: 'unity/public/$id/artists',
            httpHeaders: httpHeaders) as List<dynamic>?;
    return decodedResponse
            ?.map((json) => ArtistShort.fromJson(json))
            .toList() ??
        [];
  }
}
