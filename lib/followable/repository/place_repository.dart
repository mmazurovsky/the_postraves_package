import 'package:the_postraves_package/client/request_wrapper.dart';
import 'package:the_postraves_package/client/response_sealed.dart';
import 'package:the_postraves_package/models/related_to_place/scene.dart';
import 'package:the_postraves_package/models/shorts/event_short.dart';
import 'package:the_postraves_package/models/shorts/place_short.dart';

import '../data_sources/place_remote_data_source.dart';

abstract class PlaceRepository {
  Future<ResponseSealed<List<Scene>>> fetchScenesForPlaceById(int id);
  Future<ResponseSealed<List<EventShort>>> fetchEventsForPlaceById(int id);
  Future<ResponseSealed<List<PlaceShort>>> searchByName(String searchValue);
  Future<ResponseSealed<void>> saveOrUpdateScenes(
      int placeId, List<Scene> scenes);
}

class PlaceRepositoryImpl extends PlaceRepository {
  final PlaceRemoteDataSource placeRemoteDataSource;
  final RemoteRequestWrapper<List<EventShort>> remoteRequestWrapperEvents;
  final RemoteRequestWrapper<List<Scene>> remoteRequestWrapperScenes;
  final RemoteRequestWrapper<List<PlaceShort>> remoteRequestWrapperPlaces;
  final RemoteRequestWrapper<void> remoteRequestWrapperVoid;

  PlaceRepositoryImpl(
    this.placeRemoteDataSource,
    this.remoteRequestWrapperEvents,
    this.remoteRequestWrapperScenes,
    this.remoteRequestWrapperPlaces,
    this.remoteRequestWrapperVoid,
  );

  @override
  Future<ResponseSealed<List<EventShort>>> fetchEventsForPlaceById(
      int id) async {
    return await remoteRequestWrapperEvents(
      (httpHeaders) => placeRemoteDataSource.fetchEventsForPlaceById(
        id: id,
        httpHeaders: httpHeaders,
      ),
    );
  }

  @override
  Future<ResponseSealed<List<Scene>>> fetchScenesForPlaceById(int id) async {
    return await remoteRequestWrapperScenes(
      (httpHeaders) => placeRemoteDataSource.fetchScenesForPlaceById(
        id: id,
        httpHeaders: httpHeaders,
      ),
    );
  }

  @override
  Future<ResponseSealed<List<PlaceShort>>> searchByName(
      String searchValue) async {
    return await remoteRequestWrapperPlaces(
      (httpHeaders) => placeRemoteDataSource.searchByName(
        searchValue: searchValue,
        httpHeaders: httpHeaders,
      ),
    );
  }

  @override
  Future<ResponseSealed<void>> saveOrUpdateScenes(
      int placeId, List<Scene> scenes) async {
    return await remoteRequestWrapperVoid(
      (httpHeaders) => placeRemoteDataSource.saveOrUpdateScenes(
        placeId: placeId,
        scenes: scenes,
        httpHeaders: httpHeaders,
      ),
    );
  }
}
