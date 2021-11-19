// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'event_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventWrite _$EventWriteFromJson(Map<String, dynamic> json) {
  return _EventWrite.fromJson(json);
}

/// @nodoc
class _$EventWriteTearOff {
  const _$EventWriteTearOff();

  _EventWrite call(
      {int? id,
      required String name,
      required int placeId,
      @JsonKey(toJson: toJsonDateTimeWithTimeZoneOffset)
          required DateTime startDateTime,
      @JsonKey(toJson: toJsonDateTimeWithTimeZoneOffset)
          required DateTime endDateTime,
      List<TicketPrice>? ticketPrices,
      String? imageLink,
      String? about,
      String? ticketsLink}) {
    return _EventWrite(
      id: id,
      name: name,
      placeId: placeId,
      startDateTime: startDateTime,
      endDateTime: endDateTime,
      ticketPrices: ticketPrices,
      imageLink: imageLink,
      about: about,
      ticketsLink: ticketsLink,
    );
  }

  EventWrite fromJson(Map<String, Object> json) {
    return EventWrite.fromJson(json);
  }
}

/// @nodoc
const $EventWrite = _$EventWriteTearOff();

/// @nodoc
mixin _$EventWrite {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get placeId => throw _privateConstructorUsedError;
  @JsonKey(toJson: toJsonDateTimeWithTimeZoneOffset)
  DateTime get startDateTime => throw _privateConstructorUsedError;
  @JsonKey(toJson: toJsonDateTimeWithTimeZoneOffset)
  DateTime get endDateTime => throw _privateConstructorUsedError;
  List<TicketPrice>? get ticketPrices => throw _privateConstructorUsedError;
  String? get imageLink => throw _privateConstructorUsedError;
  String? get about => throw _privateConstructorUsedError;
  String? get ticketsLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventWriteCopyWith<EventWrite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventWriteCopyWith<$Res> {
  factory $EventWriteCopyWith(
          EventWrite value, $Res Function(EventWrite) then) =
      _$EventWriteCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String name,
      int placeId,
      @JsonKey(toJson: toJsonDateTimeWithTimeZoneOffset) DateTime startDateTime,
      @JsonKey(toJson: toJsonDateTimeWithTimeZoneOffset) DateTime endDateTime,
      List<TicketPrice>? ticketPrices,
      String? imageLink,
      String? about,
      String? ticketsLink});
}

/// @nodoc
class _$EventWriteCopyWithImpl<$Res> implements $EventWriteCopyWith<$Res> {
  _$EventWriteCopyWithImpl(this._value, this._then);

  final EventWrite _value;
  // ignore: unused_field
  final $Res Function(EventWrite) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? placeId = freezed,
    Object? startDateTime = freezed,
    Object? endDateTime = freezed,
    Object? ticketPrices = freezed,
    Object? imageLink = freezed,
    Object? about = freezed,
    Object? ticketsLink = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int,
      startDateTime: startDateTime == freezed
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDateTime: endDateTime == freezed
          ? _value.endDateTime
          : endDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ticketPrices: ticketPrices == freezed
          ? _value.ticketPrices
          : ticketPrices // ignore: cast_nullable_to_non_nullable
              as List<TicketPrice>?,
      imageLink: imageLink == freezed
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String?,
      about: about == freezed
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      ticketsLink: ticketsLink == freezed
          ? _value.ticketsLink
          : ticketsLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$EventWriteCopyWith<$Res> implements $EventWriteCopyWith<$Res> {
  factory _$EventWriteCopyWith(
          _EventWrite value, $Res Function(_EventWrite) then) =
      __$EventWriteCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String name,
      int placeId,
      @JsonKey(toJson: toJsonDateTimeWithTimeZoneOffset) DateTime startDateTime,
      @JsonKey(toJson: toJsonDateTimeWithTimeZoneOffset) DateTime endDateTime,
      List<TicketPrice>? ticketPrices,
      String? imageLink,
      String? about,
      String? ticketsLink});
}

/// @nodoc
class __$EventWriteCopyWithImpl<$Res> extends _$EventWriteCopyWithImpl<$Res>
    implements _$EventWriteCopyWith<$Res> {
  __$EventWriteCopyWithImpl(
      _EventWrite _value, $Res Function(_EventWrite) _then)
      : super(_value, (v) => _then(v as _EventWrite));

  @override
  _EventWrite get _value => super._value as _EventWrite;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? placeId = freezed,
    Object? startDateTime = freezed,
    Object? endDateTime = freezed,
    Object? ticketPrices = freezed,
    Object? imageLink = freezed,
    Object? about = freezed,
    Object? ticketsLink = freezed,
  }) {
    return _then(_EventWrite(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int,
      startDateTime: startDateTime == freezed
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDateTime: endDateTime == freezed
          ? _value.endDateTime
          : endDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ticketPrices: ticketPrices == freezed
          ? _value.ticketPrices
          : ticketPrices // ignore: cast_nullable_to_non_nullable
              as List<TicketPrice>?,
      imageLink: imageLink == freezed
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String?,
      about: about == freezed
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      ticketsLink: ticketsLink == freezed
          ? _value.ticketsLink
          : ticketsLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventWrite implements _EventWrite {
  const _$_EventWrite(
      {this.id,
      required this.name,
      required this.placeId,
      @JsonKey(toJson: toJsonDateTimeWithTimeZoneOffset)
          required this.startDateTime,
      @JsonKey(toJson: toJsonDateTimeWithTimeZoneOffset)
          required this.endDateTime,
      this.ticketPrices,
      this.imageLink,
      this.about,
      this.ticketsLink});

  factory _$_EventWrite.fromJson(Map<String, dynamic> json) =>
      _$_$_EventWriteFromJson(json);

  @override
  final int? id;
  @override
  final String name;
  @override
  final int placeId;
  @override
  @JsonKey(toJson: toJsonDateTimeWithTimeZoneOffset)
  final DateTime startDateTime;
  @override
  @JsonKey(toJson: toJsonDateTimeWithTimeZoneOffset)
  final DateTime endDateTime;
  @override
  final List<TicketPrice>? ticketPrices;
  @override
  final String? imageLink;
  @override
  final String? about;
  @override
  final String? ticketsLink;

  @override
  String toString() {
    return 'EventWrite(id: $id, name: $name, placeId: $placeId, startDateTime: $startDateTime, endDateTime: $endDateTime, ticketPrices: $ticketPrices, imageLink: $imageLink, about: $about, ticketsLink: $ticketsLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EventWrite &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.placeId, placeId) ||
                const DeepCollectionEquality()
                    .equals(other.placeId, placeId)) &&
            (identical(other.startDateTime, startDateTime) ||
                const DeepCollectionEquality()
                    .equals(other.startDateTime, startDateTime)) &&
            (identical(other.endDateTime, endDateTime) ||
                const DeepCollectionEquality()
                    .equals(other.endDateTime, endDateTime)) &&
            (identical(other.ticketPrices, ticketPrices) ||
                const DeepCollectionEquality()
                    .equals(other.ticketPrices, ticketPrices)) &&
            (identical(other.imageLink, imageLink) ||
                const DeepCollectionEquality()
                    .equals(other.imageLink, imageLink)) &&
            (identical(other.about, about) ||
                const DeepCollectionEquality().equals(other.about, about)) &&
            (identical(other.ticketsLink, ticketsLink) ||
                const DeepCollectionEquality()
                    .equals(other.ticketsLink, ticketsLink)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(placeId) ^
      const DeepCollectionEquality().hash(startDateTime) ^
      const DeepCollectionEquality().hash(endDateTime) ^
      const DeepCollectionEquality().hash(ticketPrices) ^
      const DeepCollectionEquality().hash(imageLink) ^
      const DeepCollectionEquality().hash(about) ^
      const DeepCollectionEquality().hash(ticketsLink);

  @JsonKey(ignore: true)
  @override
  _$EventWriteCopyWith<_EventWrite> get copyWith =>
      __$EventWriteCopyWithImpl<_EventWrite>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EventWriteToJson(this);
  }
}

abstract class _EventWrite implements EventWrite {
  const factory _EventWrite(
      {int? id,
      required String name,
      required int placeId,
      @JsonKey(toJson: toJsonDateTimeWithTimeZoneOffset)
          required DateTime startDateTime,
      @JsonKey(toJson: toJsonDateTimeWithTimeZoneOffset)
          required DateTime endDateTime,
      List<TicketPrice>? ticketPrices,
      String? imageLink,
      String? about,
      String? ticketsLink}) = _$_EventWrite;

  factory _EventWrite.fromJson(Map<String, dynamic> json) =
      _$_EventWrite.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get placeId => throw _privateConstructorUsedError;
  @override
  @JsonKey(toJson: toJsonDateTimeWithTimeZoneOffset)
  DateTime get startDateTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(toJson: toJsonDateTimeWithTimeZoneOffset)
  DateTime get endDateTime => throw _privateConstructorUsedError;
  @override
  List<TicketPrice>? get ticketPrices => throw _privateConstructorUsedError;
  @override
  String? get imageLink => throw _privateConstructorUsedError;
  @override
  String? get about => throw _privateConstructorUsedError;
  @override
  String? get ticketsLink => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EventWriteCopyWith<_EventWrite> get copyWith =>
      throw _privateConstructorUsedError;
}
