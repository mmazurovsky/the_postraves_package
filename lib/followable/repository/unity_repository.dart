import 'package:the_postraves_package/client/request_wrapper.dart';
import 'package:the_postraves_package/client/response_sealed.dart';
import 'package:the_postraves_package/models/shorts/artist_short.dart';
import 'package:the_postraves_package/models/shorts/event_short.dart';
import 'package:the_postraves_package/models/shorts/unity_short.dart';

import '../data_sources/unity_remote_data_source.dart';

abstract class UnityRepository {
  Future<ResponseSealed<List<ArtistShort>>> fetchArtistsForUnityById(int id);
  Future<ResponseSealed<List<EventShort>>> fetchEventsForArtistById(int id);
  Future<ResponseSealed<List<UnityShort>>> searchByName(String searchValue);
  Future<ResponseSealed<void>> saveOrUpdateArtists(
      int unityId, Set<int> artists);
}

class UnityRepositoryImpl extends UnityRepository {
  final UnityRemoteDataSource _unityRemoteDataSource;
  final RemoteRequestWrapper<List<EventShort>> _remoteRequestWrapperEvents;
  final RemoteRequestWrapper<List<ArtistShort>> _remoteRequestWrapperArtists;
  final RemoteRequestWrapper<List<UnityShort>> _remoteRequestWrapperUnities;
  final RemoteRequestWrapper<void> _remoteRequestWrapperVoid;

  UnityRepositoryImpl(
    this._unityRemoteDataSource,
    this._remoteRequestWrapperEvents,
    this._remoteRequestWrapperArtists,
    this._remoteRequestWrapperUnities,
    this._remoteRequestWrapperVoid,
  );

  @override
  Future<ResponseSealed<List<EventShort>>> fetchEventsForArtistById(
      int id) async {
    return await _remoteRequestWrapperEvents(
        (httpHeaders) => _unityRemoteDataSource.fetchEventsForUnityById(
              id: id,
              httpHeaders: httpHeaders,
            ));
  }

  @override
  Future<ResponseSealed<List<ArtistShort>>> fetchArtistsForUnityById(
      int id) async {
    return await _remoteRequestWrapperArtists(
        (httpHeaders) => _unityRemoteDataSource.fetchArtistsForUnityById(
              id: id,
              httpHeaders: httpHeaders,
            ));
  }

  @override
  Future<ResponseSealed<List<UnityShort>>> searchByName(
      String searchValue) async {
    return await _remoteRequestWrapperUnities(
      (httpHeaders) => _unityRemoteDataSource.searchByName(
        searchValue: searchValue,
        httpHeaders: httpHeaders,
      ),
    );
  }

  @override
  Future<ResponseSealed<void>> saveOrUpdateArtists(
      int unityId, Set<int> artists) async {
    return await _remoteRequestWrapperVoid(
      (httpHeaders) => _unityRemoteDataSource.saveOrUpdateArtists(
        unityId: unityId,
        artists: artists,
        httpHeaders: httpHeaders,
      ),
    );
  }
}
