import 'package:the_postraves_package/client/request_wrapper.dart';
import 'package:the_postraves_package/client/response_sealed.dart';
import 'package:the_postraves_package/models/shorts/artist_short.dart';
import 'package:the_postraves_package/models/shorts/event_short.dart';
import 'package:the_postraves_package/models/shorts/unity_short.dart';

import '../data_sources/artist_remote_data_source.dart';

abstract class ArtistRepository {
  Future<ResponseSealed<List<UnityShort>>> fetchUnitiesForArtistById(int id);
  Future<ResponseSealed<List<EventShort>>> fetchEventsForArtistById(int id);
  Future<ResponseSealed<List<ArtistShort>>> searchByName(String searchValue);
}

class ArtistRepositoryImpl extends ArtistRepository {
  final ArtistRemoteDataSource _artistRemoteDataSource;
  final RemoteRequestWrapper<List<EventShort>> _remoteRequestWrapperEvents;
  final RemoteRequestWrapper<List<UnityShort>> _remoteRequestWrapperUnities;
  final RemoteRequestWrapper<List<ArtistShort>> _remoteRequestWrapperArtists;

  ArtistRepositoryImpl(
    this._artistRemoteDataSource,
    this._remoteRequestWrapperEvents,
    this._remoteRequestWrapperUnities,
    this._remoteRequestWrapperArtists,
  );

  @override
  Future<ResponseSealed<List<EventShort>>> fetchEventsForArtistById(
      int id) async {
    return await _remoteRequestWrapperEvents(
      (httpHeaders) => _artistRemoteDataSource.fetchEventsForArtistById(
        id: id,
        httpHeaders: httpHeaders,
      ),
    );
  }

  @override
  Future<ResponseSealed<List<UnityShort>>> fetchUnitiesForArtistById(
      int id) async {
    return await _remoteRequestWrapperUnities(
      (httpHeaders) => _artistRemoteDataSource.fetchUnitiesForArtistById(
        id: id,
        httpHeaders: httpHeaders,
      ),
    );
  }

  @override
  Future<ResponseSealed<List<ArtistShort>>> searchByName(
      String searchValue) async {
    return await _remoteRequestWrapperArtists(
      (httpHeaders) => _artistRemoteDataSource.searchByName(
          searchValue: searchValue, httpHeaders: httpHeaders),
    );
  }
}
