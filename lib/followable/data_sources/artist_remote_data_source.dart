import 'package:the_postraves_package/client/localized_request.dart';
import 'package:the_postraves_package/dto/followable_type.dart';
import 'package:the_postraves_package/models/shorts/event_short.dart';
import 'package:the_postraves_package/models/shorts/unity_short.dart';

abstract class ArtistRemoteDataSource {
  Future<List<UnityShort>> fetchUnitiesForArtistById({
    required int id,
    required Map<String, String> httpHeaders,
  });

  Future<List<EventShort>> fetchEventsForArtistById({
    required int id,
    required Map<String, String> httpHeaders,
  });
}

class ArtistRemoteDataSourceImpl implements ArtistRemoteDataSource {
  final LocalizedGetRequest _localizedGetRequest;

  ArtistRemoteDataSourceImpl(this._localizedGetRequest);

  @override
  Future<List<EventShort>> fetchEventsForArtistById(
      {required int id, required Map<String, String> httpHeaders}) async {
    final decodedResponse = await _localizedGetRequest(
        endpointWithPath: '${FollowableType.ARTIST.path}/public/$id/events',
        httpHeaders: httpHeaders) as List<dynamic>?;
    return decodedResponse?.map((json) => EventShort.fromJson(json)).toList() ??
        [];
  }

  @override
  Future<List<UnityShort>> fetchUnitiesForArtistById(
      {required int id, required Map<String, String> httpHeaders}) async {
    final decodedResponse = await _localizedGetRequest(
        endpointWithPath: '${FollowableType.ARTIST.path}/public/$id/unities',
        httpHeaders: httpHeaders) as List<dynamic>?;
    return decodedResponse?.map((json) => UnityShort.fromJson(json)).toList() ??
        [];
  }
}
