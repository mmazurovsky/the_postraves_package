// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'complete_full_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CompleteEventEntityTearOff {
  const _$CompleteEventEntityTearOff();

  _CompleteEventEntity call(
      {required EventFull eventFull,
      required List<UnityShort> orgs,
      required List<ArtistShort> lineup,
      required List<TimetableForSceneByDay> timetable}) {
    return _CompleteEventEntity(
      eventFull: eventFull,
      orgs: orgs,
      lineup: lineup,
      timetable: timetable,
    );
  }
}

/// @nodoc
const $CompleteEventEntity = _$CompleteEventEntityTearOff();

/// @nodoc
mixin _$CompleteEventEntity {
  EventFull get eventFull => throw _privateConstructorUsedError;
  List<UnityShort> get orgs => throw _privateConstructorUsedError;
  List<ArtistShort> get lineup => throw _privateConstructorUsedError;
  List<TimetableForSceneByDay> get timetable =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompleteEventEntityCopyWith<CompleteEventEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompleteEventEntityCopyWith<$Res> {
  factory $CompleteEventEntityCopyWith(
          CompleteEventEntity value, $Res Function(CompleteEventEntity) then) =
      _$CompleteEventEntityCopyWithImpl<$Res>;
  $Res call(
      {EventFull eventFull,
      List<UnityShort> orgs,
      List<ArtistShort> lineup,
      List<TimetableForSceneByDay> timetable});

  $EventFullCopyWith<$Res> get eventFull;
}

/// @nodoc
class _$CompleteEventEntityCopyWithImpl<$Res>
    implements $CompleteEventEntityCopyWith<$Res> {
  _$CompleteEventEntityCopyWithImpl(this._value, this._then);

  final CompleteEventEntity _value;
  // ignore: unused_field
  final $Res Function(CompleteEventEntity) _then;

  @override
  $Res call({
    Object? eventFull = freezed,
    Object? orgs = freezed,
    Object? lineup = freezed,
    Object? timetable = freezed,
  }) {
    return _then(_value.copyWith(
      eventFull: eventFull == freezed
          ? _value.eventFull
          : eventFull // ignore: cast_nullable_to_non_nullable
              as EventFull,
      orgs: orgs == freezed
          ? _value.orgs
          : orgs // ignore: cast_nullable_to_non_nullable
              as List<UnityShort>,
      lineup: lineup == freezed
          ? _value.lineup
          : lineup // ignore: cast_nullable_to_non_nullable
              as List<ArtistShort>,
      timetable: timetable == freezed
          ? _value.timetable
          : timetable // ignore: cast_nullable_to_non_nullable
              as List<TimetableForSceneByDay>,
    ));
  }

  @override
  $EventFullCopyWith<$Res> get eventFull {
    return $EventFullCopyWith<$Res>(_value.eventFull, (value) {
      return _then(_value.copyWith(eventFull: value));
    });
  }
}

/// @nodoc
abstract class _$CompleteEventEntityCopyWith<$Res>
    implements $CompleteEventEntityCopyWith<$Res> {
  factory _$CompleteEventEntityCopyWith(_CompleteEventEntity value,
          $Res Function(_CompleteEventEntity) then) =
      __$CompleteEventEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {EventFull eventFull,
      List<UnityShort> orgs,
      List<ArtistShort> lineup,
      List<TimetableForSceneByDay> timetable});

  @override
  $EventFullCopyWith<$Res> get eventFull;
}

/// @nodoc
class __$CompleteEventEntityCopyWithImpl<$Res>
    extends _$CompleteEventEntityCopyWithImpl<$Res>
    implements _$CompleteEventEntityCopyWith<$Res> {
  __$CompleteEventEntityCopyWithImpl(
      _CompleteEventEntity _value, $Res Function(_CompleteEventEntity) _then)
      : super(_value, (v) => _then(v as _CompleteEventEntity));

  @override
  _CompleteEventEntity get _value => super._value as _CompleteEventEntity;

  @override
  $Res call({
    Object? eventFull = freezed,
    Object? orgs = freezed,
    Object? lineup = freezed,
    Object? timetable = freezed,
  }) {
    return _then(_CompleteEventEntity(
      eventFull: eventFull == freezed
          ? _value.eventFull
          : eventFull // ignore: cast_nullable_to_non_nullable
              as EventFull,
      orgs: orgs == freezed
          ? _value.orgs
          : orgs // ignore: cast_nullable_to_non_nullable
              as List<UnityShort>,
      lineup: lineup == freezed
          ? _value.lineup
          : lineup // ignore: cast_nullable_to_non_nullable
              as List<ArtistShort>,
      timetable: timetable == freezed
          ? _value.timetable
          : timetable // ignore: cast_nullable_to_non_nullable
              as List<TimetableForSceneByDay>,
    ));
  }
}

/// @nodoc

class _$_CompleteEventEntity implements _CompleteEventEntity {
  const _$_CompleteEventEntity(
      {required this.eventFull,
      required this.orgs,
      required this.lineup,
      required this.timetable});

  @override
  final EventFull eventFull;
  @override
  final List<UnityShort> orgs;
  @override
  final List<ArtistShort> lineup;
  @override
  final List<TimetableForSceneByDay> timetable;

  @override
  String toString() {
    return 'CompleteEventEntity(eventFull: $eventFull, orgs: $orgs, lineup: $lineup, timetable: $timetable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CompleteEventEntity &&
            (identical(other.eventFull, eventFull) ||
                const DeepCollectionEquality()
                    .equals(other.eventFull, eventFull)) &&
            (identical(other.orgs, orgs) ||
                const DeepCollectionEquality().equals(other.orgs, orgs)) &&
            (identical(other.lineup, lineup) ||
                const DeepCollectionEquality().equals(other.lineup, lineup)) &&
            (identical(other.timetable, timetable) ||
                const DeepCollectionEquality()
                    .equals(other.timetable, timetable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(eventFull) ^
      const DeepCollectionEquality().hash(orgs) ^
      const DeepCollectionEquality().hash(lineup) ^
      const DeepCollectionEquality().hash(timetable);

  @JsonKey(ignore: true)
  @override
  _$CompleteEventEntityCopyWith<_CompleteEventEntity> get copyWith =>
      __$CompleteEventEntityCopyWithImpl<_CompleteEventEntity>(
          this, _$identity);
}

abstract class _CompleteEventEntity implements CompleteEventEntity {
  const factory _CompleteEventEntity(
          {required EventFull eventFull,
          required List<UnityShort> orgs,
          required List<ArtistShort> lineup,
          required List<TimetableForSceneByDay> timetable}) =
      _$_CompleteEventEntity;

  @override
  EventFull get eventFull => throw _privateConstructorUsedError;
  @override
  List<UnityShort> get orgs => throw _privateConstructorUsedError;
  @override
  List<ArtistShort> get lineup => throw _privateConstructorUsedError;
  @override
  List<TimetableForSceneByDay> get timetable =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CompleteEventEntityCopyWith<_CompleteEventEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CompleteArtistEntityTearOff {
  const _$CompleteArtistEntityTearOff();

  _CompleteArtistEntity call(
      {required ArtistFull artistFull,
      required List<UnityShort> unities,
      required List<EventShort> events}) {
    return _CompleteArtistEntity(
      artistFull: artistFull,
      unities: unities,
      events: events,
    );
  }
}

/// @nodoc
const $CompleteArtistEntity = _$CompleteArtistEntityTearOff();

/// @nodoc
mixin _$CompleteArtistEntity {
  ArtistFull get artistFull => throw _privateConstructorUsedError;
  List<UnityShort> get unities => throw _privateConstructorUsedError;
  List<EventShort> get events => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompleteArtistEntityCopyWith<CompleteArtistEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompleteArtistEntityCopyWith<$Res> {
  factory $CompleteArtistEntityCopyWith(CompleteArtistEntity value,
          $Res Function(CompleteArtistEntity) then) =
      _$CompleteArtistEntityCopyWithImpl<$Res>;
  $Res call(
      {ArtistFull artistFull,
      List<UnityShort> unities,
      List<EventShort> events});

  $ArtistFullCopyWith<$Res> get artistFull;
}

/// @nodoc
class _$CompleteArtistEntityCopyWithImpl<$Res>
    implements $CompleteArtistEntityCopyWith<$Res> {
  _$CompleteArtistEntityCopyWithImpl(this._value, this._then);

  final CompleteArtistEntity _value;
  // ignore: unused_field
  final $Res Function(CompleteArtistEntity) _then;

  @override
  $Res call({
    Object? artistFull = freezed,
    Object? unities = freezed,
    Object? events = freezed,
  }) {
    return _then(_value.copyWith(
      artistFull: artistFull == freezed
          ? _value.artistFull
          : artistFull // ignore: cast_nullable_to_non_nullable
              as ArtistFull,
      unities: unities == freezed
          ? _value.unities
          : unities // ignore: cast_nullable_to_non_nullable
              as List<UnityShort>,
      events: events == freezed
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventShort>,
    ));
  }

  @override
  $ArtistFullCopyWith<$Res> get artistFull {
    return $ArtistFullCopyWith<$Res>(_value.artistFull, (value) {
      return _then(_value.copyWith(artistFull: value));
    });
  }
}

/// @nodoc
abstract class _$CompleteArtistEntityCopyWith<$Res>
    implements $CompleteArtistEntityCopyWith<$Res> {
  factory _$CompleteArtistEntityCopyWith(_CompleteArtistEntity value,
          $Res Function(_CompleteArtistEntity) then) =
      __$CompleteArtistEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {ArtistFull artistFull,
      List<UnityShort> unities,
      List<EventShort> events});

  @override
  $ArtistFullCopyWith<$Res> get artistFull;
}

/// @nodoc
class __$CompleteArtistEntityCopyWithImpl<$Res>
    extends _$CompleteArtistEntityCopyWithImpl<$Res>
    implements _$CompleteArtistEntityCopyWith<$Res> {
  __$CompleteArtistEntityCopyWithImpl(
      _CompleteArtistEntity _value, $Res Function(_CompleteArtistEntity) _then)
      : super(_value, (v) => _then(v as _CompleteArtistEntity));

  @override
  _CompleteArtistEntity get _value => super._value as _CompleteArtistEntity;

  @override
  $Res call({
    Object? artistFull = freezed,
    Object? unities = freezed,
    Object? events = freezed,
  }) {
    return _then(_CompleteArtistEntity(
      artistFull: artistFull == freezed
          ? _value.artistFull
          : artistFull // ignore: cast_nullable_to_non_nullable
              as ArtistFull,
      unities: unities == freezed
          ? _value.unities
          : unities // ignore: cast_nullable_to_non_nullable
              as List<UnityShort>,
      events: events == freezed
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventShort>,
    ));
  }
}

/// @nodoc

class _$_CompleteArtistEntity implements _CompleteArtistEntity {
  const _$_CompleteArtistEntity(
      {required this.artistFull, required this.unities, required this.events});

  @override
  final ArtistFull artistFull;
  @override
  final List<UnityShort> unities;
  @override
  final List<EventShort> events;

  @override
  String toString() {
    return 'CompleteArtistEntity(artistFull: $artistFull, unities: $unities, events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CompleteArtistEntity &&
            (identical(other.artistFull, artistFull) ||
                const DeepCollectionEquality()
                    .equals(other.artistFull, artistFull)) &&
            (identical(other.unities, unities) ||
                const DeepCollectionEquality()
                    .equals(other.unities, unities)) &&
            (identical(other.events, events) ||
                const DeepCollectionEquality().equals(other.events, events)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(artistFull) ^
      const DeepCollectionEquality().hash(unities) ^
      const DeepCollectionEquality().hash(events);

  @JsonKey(ignore: true)
  @override
  _$CompleteArtistEntityCopyWith<_CompleteArtistEntity> get copyWith =>
      __$CompleteArtistEntityCopyWithImpl<_CompleteArtistEntity>(
          this, _$identity);
}

abstract class _CompleteArtistEntity implements CompleteArtistEntity {
  const factory _CompleteArtistEntity(
      {required ArtistFull artistFull,
      required List<UnityShort> unities,
      required List<EventShort> events}) = _$_CompleteArtistEntity;

  @override
  ArtistFull get artistFull => throw _privateConstructorUsedError;
  @override
  List<UnityShort> get unities => throw _privateConstructorUsedError;
  @override
  List<EventShort> get events => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CompleteArtistEntityCopyWith<_CompleteArtistEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CompletePlaceEntityTearOff {
  const _$CompletePlaceEntityTearOff();

  _CompletePlaceEntity call(
      {required PlaceFull placeFull,
      required List<Scene> scenes,
      required List<EventShort> events}) {
    return _CompletePlaceEntity(
      placeFull: placeFull,
      scenes: scenes,
      events: events,
    );
  }
}

/// @nodoc
const $CompletePlaceEntity = _$CompletePlaceEntityTearOff();

/// @nodoc
mixin _$CompletePlaceEntity {
  PlaceFull get placeFull => throw _privateConstructorUsedError;
  List<Scene> get scenes => throw _privateConstructorUsedError;
  List<EventShort> get events => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompletePlaceEntityCopyWith<CompletePlaceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletePlaceEntityCopyWith<$Res> {
  factory $CompletePlaceEntityCopyWith(
          CompletePlaceEntity value, $Res Function(CompletePlaceEntity) then) =
      _$CompletePlaceEntityCopyWithImpl<$Res>;
  $Res call({PlaceFull placeFull, List<Scene> scenes, List<EventShort> events});

  $PlaceFullCopyWith<$Res> get placeFull;
}

/// @nodoc
class _$CompletePlaceEntityCopyWithImpl<$Res>
    implements $CompletePlaceEntityCopyWith<$Res> {
  _$CompletePlaceEntityCopyWithImpl(this._value, this._then);

  final CompletePlaceEntity _value;
  // ignore: unused_field
  final $Res Function(CompletePlaceEntity) _then;

  @override
  $Res call({
    Object? placeFull = freezed,
    Object? scenes = freezed,
    Object? events = freezed,
  }) {
    return _then(_value.copyWith(
      placeFull: placeFull == freezed
          ? _value.placeFull
          : placeFull // ignore: cast_nullable_to_non_nullable
              as PlaceFull,
      scenes: scenes == freezed
          ? _value.scenes
          : scenes // ignore: cast_nullable_to_non_nullable
              as List<Scene>,
      events: events == freezed
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventShort>,
    ));
  }

  @override
  $PlaceFullCopyWith<$Res> get placeFull {
    return $PlaceFullCopyWith<$Res>(_value.placeFull, (value) {
      return _then(_value.copyWith(placeFull: value));
    });
  }
}

/// @nodoc
abstract class _$CompletePlaceEntityCopyWith<$Res>
    implements $CompletePlaceEntityCopyWith<$Res> {
  factory _$CompletePlaceEntityCopyWith(_CompletePlaceEntity value,
          $Res Function(_CompletePlaceEntity) then) =
      __$CompletePlaceEntityCopyWithImpl<$Res>;
  @override
  $Res call({PlaceFull placeFull, List<Scene> scenes, List<EventShort> events});

  @override
  $PlaceFullCopyWith<$Res> get placeFull;
}

/// @nodoc
class __$CompletePlaceEntityCopyWithImpl<$Res>
    extends _$CompletePlaceEntityCopyWithImpl<$Res>
    implements _$CompletePlaceEntityCopyWith<$Res> {
  __$CompletePlaceEntityCopyWithImpl(
      _CompletePlaceEntity _value, $Res Function(_CompletePlaceEntity) _then)
      : super(_value, (v) => _then(v as _CompletePlaceEntity));

  @override
  _CompletePlaceEntity get _value => super._value as _CompletePlaceEntity;

  @override
  $Res call({
    Object? placeFull = freezed,
    Object? scenes = freezed,
    Object? events = freezed,
  }) {
    return _then(_CompletePlaceEntity(
      placeFull: placeFull == freezed
          ? _value.placeFull
          : placeFull // ignore: cast_nullable_to_non_nullable
              as PlaceFull,
      scenes: scenes == freezed
          ? _value.scenes
          : scenes // ignore: cast_nullable_to_non_nullable
              as List<Scene>,
      events: events == freezed
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventShort>,
    ));
  }
}

/// @nodoc

class _$_CompletePlaceEntity implements _CompletePlaceEntity {
  const _$_CompletePlaceEntity(
      {required this.placeFull, required this.scenes, required this.events});

  @override
  final PlaceFull placeFull;
  @override
  final List<Scene> scenes;
  @override
  final List<EventShort> events;

  @override
  String toString() {
    return 'CompletePlaceEntity(placeFull: $placeFull, scenes: $scenes, events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CompletePlaceEntity &&
            (identical(other.placeFull, placeFull) ||
                const DeepCollectionEquality()
                    .equals(other.placeFull, placeFull)) &&
            (identical(other.scenes, scenes) ||
                const DeepCollectionEquality().equals(other.scenes, scenes)) &&
            (identical(other.events, events) ||
                const DeepCollectionEquality().equals(other.events, events)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(placeFull) ^
      const DeepCollectionEquality().hash(scenes) ^
      const DeepCollectionEquality().hash(events);

  @JsonKey(ignore: true)
  @override
  _$CompletePlaceEntityCopyWith<_CompletePlaceEntity> get copyWith =>
      __$CompletePlaceEntityCopyWithImpl<_CompletePlaceEntity>(
          this, _$identity);
}

abstract class _CompletePlaceEntity implements CompletePlaceEntity {
  const factory _CompletePlaceEntity(
      {required PlaceFull placeFull,
      required List<Scene> scenes,
      required List<EventShort> events}) = _$_CompletePlaceEntity;

  @override
  PlaceFull get placeFull => throw _privateConstructorUsedError;
  @override
  List<Scene> get scenes => throw _privateConstructorUsedError;
  @override
  List<EventShort> get events => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CompletePlaceEntityCopyWith<_CompletePlaceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CompleteUnityEntityTearOff {
  const _$CompleteUnityEntityTearOff();

  _CompleteUnityEntity call(
      {required UnityFull unityFull,
      required List<ArtistShort> artists,
      required List<EventShort> events}) {
    return _CompleteUnityEntity(
      unityFull: unityFull,
      artists: artists,
      events: events,
    );
  }
}

/// @nodoc
const $CompleteUnityEntity = _$CompleteUnityEntityTearOff();

/// @nodoc
mixin _$CompleteUnityEntity {
  UnityFull get unityFull => throw _privateConstructorUsedError;
  List<ArtistShort> get artists => throw _privateConstructorUsedError;
  List<EventShort> get events => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompleteUnityEntityCopyWith<CompleteUnityEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompleteUnityEntityCopyWith<$Res> {
  factory $CompleteUnityEntityCopyWith(
          CompleteUnityEntity value, $Res Function(CompleteUnityEntity) then) =
      _$CompleteUnityEntityCopyWithImpl<$Res>;
  $Res call(
      {UnityFull unityFull,
      List<ArtistShort> artists,
      List<EventShort> events});

  $UnityFullCopyWith<$Res> get unityFull;
}

/// @nodoc
class _$CompleteUnityEntityCopyWithImpl<$Res>
    implements $CompleteUnityEntityCopyWith<$Res> {
  _$CompleteUnityEntityCopyWithImpl(this._value, this._then);

  final CompleteUnityEntity _value;
  // ignore: unused_field
  final $Res Function(CompleteUnityEntity) _then;

  @override
  $Res call({
    Object? unityFull = freezed,
    Object? artists = freezed,
    Object? events = freezed,
  }) {
    return _then(_value.copyWith(
      unityFull: unityFull == freezed
          ? _value.unityFull
          : unityFull // ignore: cast_nullable_to_non_nullable
              as UnityFull,
      artists: artists == freezed
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<ArtistShort>,
      events: events == freezed
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventShort>,
    ));
  }

  @override
  $UnityFullCopyWith<$Res> get unityFull {
    return $UnityFullCopyWith<$Res>(_value.unityFull, (value) {
      return _then(_value.copyWith(unityFull: value));
    });
  }
}

/// @nodoc
abstract class _$CompleteUnityEntityCopyWith<$Res>
    implements $CompleteUnityEntityCopyWith<$Res> {
  factory _$CompleteUnityEntityCopyWith(_CompleteUnityEntity value,
          $Res Function(_CompleteUnityEntity) then) =
      __$CompleteUnityEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {UnityFull unityFull,
      List<ArtistShort> artists,
      List<EventShort> events});

  @override
  $UnityFullCopyWith<$Res> get unityFull;
}

/// @nodoc
class __$CompleteUnityEntityCopyWithImpl<$Res>
    extends _$CompleteUnityEntityCopyWithImpl<$Res>
    implements _$CompleteUnityEntityCopyWith<$Res> {
  __$CompleteUnityEntityCopyWithImpl(
      _CompleteUnityEntity _value, $Res Function(_CompleteUnityEntity) _then)
      : super(_value, (v) => _then(v as _CompleteUnityEntity));

  @override
  _CompleteUnityEntity get _value => super._value as _CompleteUnityEntity;

  @override
  $Res call({
    Object? unityFull = freezed,
    Object? artists = freezed,
    Object? events = freezed,
  }) {
    return _then(_CompleteUnityEntity(
      unityFull: unityFull == freezed
          ? _value.unityFull
          : unityFull // ignore: cast_nullable_to_non_nullable
              as UnityFull,
      artists: artists == freezed
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<ArtistShort>,
      events: events == freezed
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventShort>,
    ));
  }
}

/// @nodoc

class _$_CompleteUnityEntity implements _CompleteUnityEntity {
  const _$_CompleteUnityEntity(
      {required this.unityFull, required this.artists, required this.events});

  @override
  final UnityFull unityFull;
  @override
  final List<ArtistShort> artists;
  @override
  final List<EventShort> events;

  @override
  String toString() {
    return 'CompleteUnityEntity(unityFull: $unityFull, artists: $artists, events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CompleteUnityEntity &&
            (identical(other.unityFull, unityFull) ||
                const DeepCollectionEquality()
                    .equals(other.unityFull, unityFull)) &&
            (identical(other.artists, artists) ||
                const DeepCollectionEquality()
                    .equals(other.artists, artists)) &&
            (identical(other.events, events) ||
                const DeepCollectionEquality().equals(other.events, events)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(unityFull) ^
      const DeepCollectionEquality().hash(artists) ^
      const DeepCollectionEquality().hash(events);

  @JsonKey(ignore: true)
  @override
  _$CompleteUnityEntityCopyWith<_CompleteUnityEntity> get copyWith =>
      __$CompleteUnityEntityCopyWithImpl<_CompleteUnityEntity>(
          this, _$identity);
}

abstract class _CompleteUnityEntity implements CompleteUnityEntity {
  const factory _CompleteUnityEntity(
      {required UnityFull unityFull,
      required List<ArtistShort> artists,
      required List<EventShort> events}) = _$_CompleteUnityEntity;

  @override
  UnityFull get unityFull => throw _privateConstructorUsedError;
  @override
  List<ArtistShort> get artists => throw _privateConstructorUsedError;
  @override
  List<EventShort> get events => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CompleteUnityEntityCopyWith<_CompleteUnityEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
