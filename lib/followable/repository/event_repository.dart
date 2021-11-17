import 'package:the_postraves_package/client/request_wrapper.dart';
import 'package:the_postraves_package/client/response_sealed.dart';
import 'package:the_postraves_package/models/related_to_event/timetable_for_scene.dart';
import 'package:the_postraves_package/models/shorts/artist_short.dart';
import 'package:the_postraves_package/models/shorts/event_short.dart';
import 'package:the_postraves_package/models/shorts/unity_short.dart';
import 'package:the_postraves_package/models/write/timetable_performance_write.dart';

import '../data_sources/event_remote_data_source.dart';

abstract class EventRepository {
  Future<ResponseSealed<List<UnityShort>>> fetchOrganizersForEventById(int id);
  Future<ResponseSealed<List<ArtistShort>>> fetchLineupForEventById(int id);
  Future<ResponseSealed<List<TimetableForScene>>> fetchTimetableForEventById(
      int id);
  Future<ResponseSealed<List<EventShort>>> searchByName(String searchValue);
  Future<ResponseSealed<void>> saveOrUpdateOrganizers(
      int eventId, Set<int> orgsIds);
  Future<ResponseSealed<void>> saveOrUpdateTimetable(
      int eventId, List<TimetablePerformanceWrite> timetable);
}

class EventRepositoryImpl extends EventRepository {
  final EventRemoteDataSource eventRemoteDataSource;
  final RemoteRequestWrapper<List<UnityShort>> remoteRequestWrapperUnities;
  final RemoteRequestWrapper<List<ArtistShort>> remoteRequestWrapperArtists;
  final RemoteRequestWrapper<List<TimetableForScene>>
      remoteRequestWrapperTimetable;
  final RemoteRequestWrapper<List<EventShort>> remoteRequestWrapperEvents;
  final RemoteRequestWrapper<void> remoteRequestWrapperVoid;

  EventRepositoryImpl(
    this.eventRemoteDataSource,
    this.remoteRequestWrapperUnities,
    this.remoteRequestWrapperArtists,
    this.remoteRequestWrapperTimetable,
    this.remoteRequestWrapperEvents,
    this.remoteRequestWrapperVoid,
  );

  @override
  Future<ResponseSealed<List<UnityShort>>> fetchOrganizersForEventById(
      int id) async {
    return await remoteRequestWrapperUnities(
      (httpHeaders) => eventRemoteDataSource.fetchOrganizersForEventById(
        id: id,
        httpHeaders: httpHeaders,
      ),
    );
  }

  @override
  Future<ResponseSealed<List<ArtistShort>>> fetchLineupForEventById(
      int id) async {
    return await remoteRequestWrapperArtists(
      (httpHeaders) => eventRemoteDataSource.fetchLineupForEventById(
        id: id,
        httpHeaders: httpHeaders,
      ),
    );
  }

  @override
  Future<ResponseSealed<List<TimetableForScene>>> fetchTimetableForEventById(
      int id) async {
    return await remoteRequestWrapperTimetable(
      (httpHeaders) => eventRemoteDataSource.fetchTimetableForEventById(
        id: id,
        httpHeaders: httpHeaders,
      ),
    );
  }

  @override
  Future<ResponseSealed<List<EventShort>>> searchByName(
      String searchValue) async {
    return await remoteRequestWrapperEvents(
      (httpHeaders) => eventRemoteDataSource.searchByName(
        searchValue: searchValue,
        httpHeaders: httpHeaders,
      ),
    );
  }

  @override
  Future<ResponseSealed<void>> saveOrUpdateOrganizers(
      int eventId, Set<int> orgsIds) async {
    return await remoteRequestWrapperVoid(
      (httpHeaders) => eventRemoteDataSource.saveOrUpdateOrganizers(
        eventId: eventId,
        orgsIds: orgsIds,
        httpHeaders: httpHeaders,
      ),
    );
  }

  @override
  Future<ResponseSealed<void>> saveOrUpdateTimetable(
      int eventId, List<TimetablePerformanceWrite> timetable) async {
    return await remoteRequestWrapperVoid(
      (httpHeaders) => eventRemoteDataSource.saveOrUpdateTimetable(
        eventId: eventId,
        timetable: timetable,
        httpHeaders: httpHeaders,
      ),
    );
  }
}
