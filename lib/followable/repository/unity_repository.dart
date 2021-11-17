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
  final UnityRemoteDataSource unityRemoteDataSource;
  final RemoteRequestWrapper<List<EventShort>> remoteRequestWrapperEvents;
  final RemoteRequestWrapper<List<ArtistShort>> remoteRequestWrapperArtists;
  final RemoteRequestWrapper<List<UnityShort>> remoteRequestWrapperUnities;
  final RemoteRequestWrapper<void> remoteRequestWrapperVoid;

  UnityRepositoryImpl(
    this.unityRemoteDataSource,
    this.remoteRequestWrapperEvents,
    this.remoteRequestWrapperArtists,
    this.remoteRequestWrapperUnities,
    this.remoteRequestWrapperVoid,
  );

  @override
  Future<ResponseSealed<List<EventShort>>> fetchEventsForArtistById(
      int id) async {
    return await remoteRequestWrapperEvents(
        (httpHeaders) => unityRemoteDataSource.fetchEventsForUnityById(
              id: id,
              httpHeaders: httpHeaders,
            ));
  }

  @override
  Future<ResponseSealed<List<ArtistShort>>> fetchArtistsForUnityById(
      int id) async {
    return await remoteRequestWrapperArtists(
        (httpHeaders) => unityRemoteDataSource.fetchArtistsForUnityById(
              id: id,
              httpHeaders: httpHeaders,
            ));
  }

  @override
  Future<ResponseSealed<List<UnityShort>>> searchByName(
      String searchValue) async {
    return await remoteRequestWrapperUnities(
      (httpHeaders) => unityRemoteDataSource.searchByName(
        searchValue: searchValue,
        httpHeaders: httpHeaders,
      ),
    );
  }

  @override
  Future<ResponseSealed<void>> saveOrUpdateArtists(
      int unityId, Set<int> artists) async {
    return await remoteRequestWrapperVoid(
      (httpHeaders) => unityRemoteDataSource.saveOrUpdateArtists(
        unityId: unityId,
        artists: artists,
        httpHeaders: httpHeaders,
      ),
    );
  }
}
