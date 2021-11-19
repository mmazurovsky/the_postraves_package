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
      int eventId, List<int> orgsIds);
  Future<ResponseSealed<void>> saveOrUpdateTimetable(
      int eventId, List<TimetablePerformanceWrite> timetable);
}

class EventRepositoryImpl extends EventRepository {
  final EventRemoteDataSource _eventRemoteDataSource;
  final RemoteRequestWrapper<List<UnityShort>> _remoteRequestWrapperUnities;
  final RemoteRequestWrapper<List<ArtistShort>> _remoteRequestWrapperArtists;
  final RemoteRequestWrapper<List<TimetableForScene>>
      _remoteRequestWrapperTimetable;
  final RemoteRequestWrapper<List<EventShort>> _remoteRequestWrapperEvents;
  final RemoteRequestWrapper<void> _remoteRequestWrapperVoid;

  EventRepositoryImpl(
    this._eventRemoteDataSource,
    this._remoteRequestWrapperUnities,
    this._remoteRequestWrapperArtists,
    this._remoteRequestWrapperTimetable,
    this._remoteRequestWrapperEvents,
    this._remoteRequestWrapperVoid,
  );

  @override
  Future<ResponseSealed<List<UnityShort>>> fetchOrganizersForEventById(
      int id) async {
    return await _remoteRequestWrapperUnities(
      (httpHeaders) => _eventRemoteDataSource.fetchOrganizersForEventById(
        id: id,
        httpHeaders: httpHeaders,
      ),
    );
  }

  @override
  Future<ResponseSealed<List<ArtistShort>>> fetchLineupForEventById(
      int id) async {
    return await _remoteRequestWrapperArtists(
      (httpHeaders) => _eventRemoteDataSource.fetchLineupForEventById(
        id: id,
        httpHeaders: httpHeaders,
      ),
    );
  }

  @override
  Future<ResponseSealed<List<TimetableForScene>>> fetchTimetableForEventById(
      int id) async {
    return await _remoteRequestWrapperTimetable(
      (httpHeaders) => _eventRemoteDataSource.fetchTimetableForEventById(
        id: id,
        httpHeaders: httpHeaders,
      ),
    );
  }

  @override
  Future<ResponseSealed<List<EventShort>>> searchByName(
      String searchValue) async {
    return await _remoteRequestWrapperEvents(
      (httpHeaders) => _eventRemoteDataSource.searchByName(
        searchValue: searchValue,
        httpHeaders: httpHeaders,
      ),
    );
  }

  @override
  Future<ResponseSealed<void>> saveOrUpdateOrganizers(
      int eventId, List<int> orgsIds) async {
    return await _remoteRequestWrapperVoid(
      (httpHeaders) => _eventRemoteDataSource.saveOrUpdateOrganizers(
        eventId: eventId,
        orgsIds: orgsIds,
        httpHeaders: httpHeaders,
      ),
    );
  }

  @override
  Future<ResponseSealed<void>> saveOrUpdateTimetable(
      int eventId, List<TimetablePerformanceWrite> timetable) async {
    return await _remoteRequestWrapperVoid(
      (httpHeaders) => _eventRemoteDataSource.saveOrUpdateTimetable(
        eventId: eventId,
        timetable: timetable,
        httpHeaders: httpHeaders,
      ),
    );
  }
}
