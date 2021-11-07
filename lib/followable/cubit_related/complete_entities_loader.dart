import 'package:the_postraves_package/client/response_sealed.dart';
import 'package:the_postraves_package/dto/timetable_for_scene_by_day.dart';
import 'package:the_postraves_package/errors/failures.dart';
import 'package:the_postraves_package/followable/cubit_related/complete_full_entities.dart';
import 'package:the_postraves_package/followable/repository/artist_repository.dart';
import 'package:the_postraves_package/followable/repository/event_repository.dart';
import 'package:the_postraves_package/followable/repository/place_repository.dart';
import 'package:the_postraves_package/followable/repository/unity_repository.dart';
import 'package:the_postraves_package/followable/repository/wiki_repository.dart';
import 'package:the_postraves_package/models/fulls/artist_full.dart';
import 'package:the_postraves_package/models/fulls/event_full.dart';
import 'package:the_postraves_package/models/fulls/place_full.dart';
import 'package:the_postraves_package/models/fulls/unity_full.dart';
import 'package:the_postraves_package/models/related_to_event/timetable_for_scene.dart';
import 'package:the_postraves_package/models/related_to_place/scene.dart';
import 'package:the_postraves_package/models/shorts/artist_short.dart';
import 'package:the_postraves_package/models/shorts/event_short.dart';
import 'package:the_postraves_package/models/shorts/unity_short.dart';

abstract class CompleteEntitiesLoader {
  Future<ResponseSealed<CompleteEventEntity>> loadCompleteEvent(
      {required int id});
  Future<ResponseSealed<CompleteArtistEntity>> loadCompleteArtist(
      {required int id});
  Future<ResponseSealed<CompletePlaceEntity>> loadCompletePlace(
      {required int id});
  Future<ResponseSealed<CompleteUnityEntity>> loadCompleteUnity(
      {required int id});
}

class CompleteEntitiesLoaderImpl implements CompleteEntitiesLoader {
  final FollowableRepository<EventFull> eventFollowableRepository;
  final FollowableRepository<ArtistFull> artistFollowableRepository;
  final FollowableRepository<PlaceFull> placeFollowableRepository;
  final FollowableRepository<UnityFull> unityFollowableRepository;
  final ArtistRepository artistRepository;
  final EventRepository eventRepository;
  final UnityRepository unityRepository;
  final PlaceRepository placeRepository;

  CompleteEntitiesLoaderImpl(
    this.eventFollowableRepository,
    this.eventRepository,
    this.unityRepository,
    this.placeRepository,
    this.artistFollowableRepository,
    this.artistRepository,
    this.placeFollowableRepository,
    this.unityFollowableRepository,
  );

  @override
  Future<ResponseSealed<CompleteEventEntity>> loadCompleteEvent(
      {required int id}) async {
    final eventBasicRequest = eventFollowableRepository.fetchBasicDataById(id);
    final eventOrganizersRequest =
        eventRepository.fetchOrganizersForEventById(id);
    final eventLineupRequest = eventRepository.fetchLineupForEventById(id);
    final eventTimetableRequest =
        eventRepository.fetchTimetableForEventById(id);

    final basicResponse = await eventBasicRequest;
    final organizersResponse = await eventOrganizersRequest;
    final lineupResponse = await eventLineupRequest;
    final timetableResponse = await eventTimetableRequest;

    EventFull? basic;
    List<UnityShort>? orgs;
    List<ArtistShort>? lineup;
    List<TimetableForScene>? timetable;
    Failure? failure;
    basicResponse.when(
        success: (data) => basic = data,
        failure: (incomingFailure) {
          failure = incomingFailure;
        });
    organizersResponse.when(
        success: (data) => orgs = data,
        failure: (incomingFailure) {
          failure = incomingFailure;
        });
    lineupResponse.when(
        success: (data) => lineup = data,
        failure: (incomingFailure) {
          failure = incomingFailure;
        });
    timetableResponse.when(
        success: (data) => timetable = data,
        failure: (incomingFailure) {
          failure = incomingFailure;
        });

    if (failure != null) {
      return ResponseSealed.failure(failure!);
    } else {
      final timetableDataDtoList = timetable!
          .map((model) => TimetableForSceneByDay.fromModel(model))
          .toList();

      return ResponseSealed.success(
        CompleteEventEntity(
            eventFull: basic!,
            orgs: orgs!,
            lineup: lineup!,
            timetable: timetableDataDtoList),
      );
    }
  }

  @override
  Future<ResponseSealed<CompleteArtistEntity>> loadCompleteArtist({
    required int id,
  }) async {
    final responseBasicRequest =
        artistFollowableRepository.fetchBasicDataById(id);
    final responseUnitiesRequest =
        artistRepository.fetchUnitiesForArtistById(id);
    final responseEventsRequest = artistRepository.fetchEventsForArtistById(id);

    final responseBasic = await responseBasicRequest;
    final responseUnities = await responseUnitiesRequest;
    final responseEvents = await responseEventsRequest;

    Failure? failure;
    ArtistFull? basic;
    List<UnityShort>? unities;
    List<EventShort>? events;
    responseBasic.when(
        success: (data) => basic = data,
        failure: (incomingFailure) {
          failure = incomingFailure;
        });
    responseUnities.when(
        success: (data) => unities = data,
        failure: (incomingFailure) {
          failure = incomingFailure;
        });
    responseEvents.when(
        success: (data) => events = data,
        failure: (incomingFailure) {
          failure = incomingFailure;
        });

    if (failure != null) {
      return ResponseSealed.failure(failure!);
    } else {
      return ResponseSealed.success(
        CompleteArtistEntity(
          artistFull: basic!,
          unions: unities!,
          events: events!,
        ),
      );
    }
  }

  @override
  Future<ResponseSealed<CompletePlaceEntity>> loadCompletePlace(
      {required int id}) async {
    final responseBasicRequest =
        placeFollowableRepository.fetchBasicDataById(id);
    final responseScenesRequest = placeRepository.fetchScenesForPlaceById(id);
    final responseEventsRequest = placeRepository.fetchEventsForPlaceById(id);

    final responseBasic = await responseBasicRequest;
    final responseScenes = await responseScenesRequest;
    final responseEvents = await responseEventsRequest;

    Failure? failure;
    PlaceFull? basic;
    List<Scene>? scenes;
    List<EventShort>? events;
    responseBasic.when(
        success: (data) => basic = data,
        failure: (incomingFailure) {
          failure = incomingFailure;
        });
    responseScenes.when(
        success: (data) => scenes = data,
        failure: (incomingFailure) {
          failure = incomingFailure;
        });
    responseEvents.when(
        success: (data) => events = data,
        failure: (incomingFailure) {
          failure = incomingFailure;
        });

    if (failure != null) {
      return ResponseSealed.failure(failure!);
    } else {
      return ResponseSealed.success(
        CompletePlaceEntity(
          placeFull: basic!,
          scenes: scenes!,
          events: events!,
        ),
      );
    }
  }

  @override
  Future<ResponseSealed<CompleteUnityEntity>> loadCompleteUnity(
      {required int id}) async {
    final responseBasicRequest =
        unityFollowableRepository.fetchBasicDataById(id);
    final responseArtistsRequest = unityRepository.fetchArtistsForUnityById(id);
    final responseEventsRequest = unityRepository.fetchEventsForArtistById(id);

    final responseBasic = await responseBasicRequest;
    final responseArtists = await responseArtistsRequest;
    final responseEvents = await responseEventsRequest;

    Failure? failure;
    UnityFull? basic;
    List<ArtistShort>? artists;
    List<EventShort>? events;
    responseBasic.when(
        success: (data) => basic = data,
        failure: (incomingFailure) {
          failure = incomingFailure;
        });
    responseArtists.when(
        success: (data) => artists = data,
        failure: (incomingFailure) {
          failure = incomingFailure;
        });
    responseEvents.when(
        success: (data) => events = data,
        failure: (incomingFailure) {
          failure = incomingFailure;
        });

    if (failure != null) {
      return ResponseSealed.failure(failure!);
    } else {
      return ResponseSealed.success(
        CompleteUnityEntity(
          unityFull: basic!,
          artists: artists!,
          events: events!,
        ),
      );
    }
  }
}
