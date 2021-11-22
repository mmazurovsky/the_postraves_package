import 'package:the_postraves_package/client/localized_request.dart';
import 'package:the_postraves_package/dto/followable_type.dart';
import 'package:the_postraves_package/models/shorts/artist_short.dart';
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

  // Future<List<ArtistShort>> searchByName(
  //     {required String searchValue, required Map<String, String> httpHeaders});
}

class ArtistRemoteDataSourceImpl implements ArtistRemoteDataSource {
  final LocalizedGetRequest _localizedGetRequest;

  ArtistRemoteDataSourceImpl(this._localizedGetRequest);

  @override
  Future<List<EventShort>> fetchEventsForArtistById(
      {required int id, required Map<String, String> httpHeaders}) async {
    final decodedResponse = await _localizedGetRequest(
        endpointWithPath: '${FollowableType.ARTIST.endpoint}/public/$id/events',
        httpHeaders: httpHeaders) as List<dynamic>?;
    return decodedResponse?.map((json) => EventShort.fromJson(json)).toList() ??
        [];
  }

  @override
  Future<List<UnityShort>> fetchUnitiesForArtistById(
      {required int id, required Map<String, String> httpHeaders}) async {
    final decodedResponse = await _localizedGetRequest(
        endpointWithPath: '${FollowableType.ARTIST.endpoint}/public/$id/unities',
        httpHeaders: httpHeaders) as List<dynamic>?;
    return decodedResponse?.map((json) => UnityShort.fromJson(json)).toList() ??
        [];
  }

  // @override
  // Future<List<ArtistShort>> searchByName(
  //     {required String searchValue,
  //     required Map<String, String> httpHeaders}) async {
  //   final requestArtists = _localizedGetRequest(
  //     endpointWithPath:
  //         '${FollowableType.ARTIST.endpoint}/public/search/$searchValue',
  //     httpHeaders: httpHeaders,
  //   );

  //   final responseArtists = await requestArtists as List<dynamic>?;

  //   final decodedArtists =
  //       responseArtists?.map((json) => ArtistShort.fromJson(json)).toList() ??
  //           [];
  //   return decodedArtists;
  // }
}
