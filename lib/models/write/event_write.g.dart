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
    startDateTime:
        DateTimeConverter.fromJsonNonNullable(json['startDateTime'] as String),
    endDateTime:
        DateTimeConverter.fromJsonNonNullable(json['endDateTime'] as String),
    ticketPrices: (json['ticketPrices'] as List<dynamic>?)
        ?.map((e) => TicketPriceWrite.fromJson(e as Map<String, dynamic>))
        .toList(),
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
      'startDateTime':
          DateTimeConverter.toJsonNonNullable(instance.startDateTime),
      'endDateTime': DateTimeConverter.toJsonNonNullable(instance.endDateTime),
      'ticketPrices': instance.ticketPrices?.map((e) => e.toJson()).toList(),
      'imageLink': instance.imageLink,
      'about': instance.about,
      'ticketsLink': instance.ticketsLink,
    };
