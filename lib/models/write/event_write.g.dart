// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventWrite _$_$_EventWriteFromJson(Map<String, dynamic> json) {
  return _$_EventWrite(
    id: json['id'] as int?,
    name: json['name'] as String,
    placeId: json['placeId'] as int,
    startDateTime: DateTime.parse(json['startDateTime'] as String),
    endDateTime: DateTime.parse(json['endDateTime'] as String),
    ticketPrices: (json['ticketPrices'] as List<dynamic>?)
        ?.map((e) => TicketPrice.fromJson(e as Map<String, dynamic>))
        .toList(),
    organizers:
        (json['organizers'] as List<dynamic>?)?.map((e) => e as int).toSet(),
    imageLink: json['imageLink'] as String?,
    about: json['about'] as String?,
    ticketsLink: json['ticketsLink'] as String?,
  );
}

Map<String, dynamic> _$_$_EventWriteToJson(_$_EventWrite instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'placeId': instance.placeId,
      'startDateTime': instance.startDateTime.toIso8601String(),
      'endDateTime': instance.endDateTime.toIso8601String(),
      'ticketPrices': instance.ticketPrices?.map((e) => e.toJson()).toList(),
      'organizers': instance.organizers?.toList(),
      'imageLink': instance.imageLink,
      'about': instance.about,
      'ticketsLink': instance.ticketsLink,
    };
