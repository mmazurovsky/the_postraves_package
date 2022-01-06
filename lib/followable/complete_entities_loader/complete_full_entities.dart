import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/dto/timetable_for_scene_by_day.dart';
import 'package:the_postraves_package/models/fulls/artist_full.dart';
import 'package:the_postraves_package/models/fulls/event_full.dart';
import 'package:the_postraves_package/models/fulls/place_full.dart';
import 'package:the_postraves_package/models/fulls/unity_full.dart';
import 'package:the_postraves_package/models/related_to_place/scene.dart';
import 'package:the_postraves_package/models/shorts/artist_short.dart';
import 'package:the_postraves_package/models/shorts/event_short.dart';
import 'package:the_postraves_package/models/shorts/unity_short.dart';

part 'complete_full_entities.freezed.dart';

@freezed
class CompleteEventEntity with _$CompleteEventEntity {
  const factory CompleteEventEntity({
    required EventFull eventFull,
    required List<UnityShort> orgs,
    required List<ArtistShort> lineup,
    required List<TimetableForSceneByDay> timetable,
  }) = _CompleteEventEntity;
}

@freezed
class CompleteArtistEntity with _$CompleteArtistEntity {
  const factory CompleteArtistEntity({
    required ArtistFull artistFull,
    required List<UnityShort> unities,
    required List<EventShort> events,
  }) = _CompleteArtistEntity;
}

@freezed
class CompletePlaceEntity with _$CompletePlaceEntity {
  const factory CompletePlaceEntity({
    required PlaceFull placeFull,
    required List<Scene> scenes,
    required List<EventShort> events,
  }) = _CompletePlaceEntity;
}

@freezed
class CompleteUnityEntity with _$CompleteUnityEntity {
  const factory CompleteUnityEntity({
    required UnityFull unityFull,
    required List<ArtistShort> artists,
    required List<EventShort> events,
  }) = _CompleteUnityEntity;
}
