import 'package:the_postraves_package/dto/timetable_for_scene_by_day.dart';
import 'package:the_postraves_package/models/fulls/artist_full.dart';
import 'package:the_postraves_package/models/fulls/event_full.dart';
import 'package:the_postraves_package/models/fulls/place_full.dart';
import 'package:the_postraves_package/models/fulls/unity_full.dart';
import 'package:the_postraves_package/models/related_to_place/scene.dart';
import 'package:the_postraves_package/models/shorts/artist_short.dart';
import 'package:the_postraves_package/models/shorts/event_short.dart';
import 'package:the_postraves_package/models/shorts/unity_short.dart';

class CompleteEventEntity {
  final EventFull eventFull;
  final List<UnityShort> orgs;
  final List<ArtistShort> lineup;
  final List<TimetableForSceneByDay> timetable;

  CompleteEventEntity({
    required this.eventFull,
    required this.orgs,
    required this.lineup,
    required this.timetable,
  });
}

class CompleteArtistEntity {
  final ArtistFull artistFull;
  final List<UnityShort> unions;
  final List<EventShort> events;

  CompleteArtistEntity({
    required this.artistFull,
    required this.unions,
    required this.events,
  });
}

class CompletePlaceEntity {
  final PlaceFull placeFull;
  final List<Scene> scenes;
  final List<EventShort> events;

  CompletePlaceEntity({
    required this.placeFull,
    required this.scenes,
    required this.events,
  });
}

class CompleteUnityEntity {
  final UnityFull unityFull;
  final List<ArtistShort> artists;
  final List<EventShort> events;

  CompleteUnityEntity({
    required this.unityFull,
    required this.artists,
    required this.events,
  });
}
