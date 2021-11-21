// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timetable_performance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimetablePerformance _$_$_TimetablePerformanceFromJson(
    Map<String, dynamic> json) {
  return _$_TimetablePerformance(
    id: json['id'] as int,
    artists: (json['artists'] as List<dynamic>)
        .map((e) => ArtistShort.fromJson(e as Map<String, dynamic>))
        .toList(),
    startingDateTime:
        DateTimeConverter.fromJson(json['startingDateTime'] as String?),
    endingDateTime:
        DateTimeConverter.fromJson(json['endingDateTime'] as String?),
    typeOfPerformance: json['typeOfPerformance'] as String?,
  );
}

Map<String, dynamic> _$_$_TimetablePerformanceToJson(
        _$_TimetablePerformance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'artists': instance.artists.map((e) => e.toJson()).toList(),
      'startingDateTime': DateTimeConverter.toJson(instance.startingDateTime),
      'endingDateTime': DateTimeConverter.toJson(instance.endingDateTime),
      'typeOfPerformance': instance.typeOfPerformance,
    };
