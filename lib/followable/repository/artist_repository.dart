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
  final ArtistRemoteDataSource artistRemoteDataSource;
  final RemoteRequestWrapper<List<EventShort>> remoteRequestWrapperEvents;
  final RemoteRequestWrapper<List<UnityShort>> remoteRequestWrapperUnities;
  final RemoteRequestWrapper<List<ArtistShort>> remoteRequestWrapperArtists;

  ArtistRepositoryImpl(
    this.artistRemoteDataSource,
    this.remoteRequestWrapperEvents,
    this.remoteRequestWrapperUnities,
    this.remoteRequestWrapperArtists,
  );

  @override
  Future<ResponseSealed<List<EventShort>>> fetchEventsForArtistById(
      int id) async {
    return await remoteRequestWrapperEvents(
      (httpHeaders) => artistRemoteDataSource.fetchEventsForArtistById(
        id: id,
        httpHeaders: httpHeaders,
      ),
    );
  }

  @override
  Future<ResponseSealed<List<UnityShort>>> fetchUnitiesForArtistById(
      int id) async {
    return await remoteRequestWrapperUnities(
      (httpHeaders) => artistRemoteDataSource.fetchUnitiesForArtistById(
        id: id,
        httpHeaders: httpHeaders,
      ),
    );
  }

  @override
  Future<ResponseSealed<List<ArtistShort>>> searchByName(
      String searchValue) async {
    return await remoteRequestWrapperArtists(
      (httpHeaders) => artistRemoteDataSource.searchByName(
          searchValue: searchValue, httpHeaders: httpHeaders),
    );
  }
}
