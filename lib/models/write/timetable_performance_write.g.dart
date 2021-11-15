// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timetable_performance_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimetablePerformanceWrite _$_$_TimetablePerformanceWriteFromJson(
    Map<String, dynamic> json) {
  return _$_TimetablePerformanceWrite(
    id: json['id'] as int?,
    sceneId: json['sceneId'] as int?,
    artistIds:
        (json['artistIds'] as List<dynamic>).map((e) => e as int).toSet(),
    typeOfPerformance: json['typeOfPerformance'] as String?,
    startingDateTime: json['startingDateTime'] == null
        ? null
        : DateTime.parse(json['startingDateTime'] as String),
    endingDateTime: json['endingDateTime'] == null
        ? null
        : DateTime.parse(json['endingDateTime'] as String),
  );
}

Map<String, dynamic> _$_$_TimetablePerformanceWriteToJson(
        _$_TimetablePerformanceWrite instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sceneId': instance.sceneId,
      'artistIds': instance.artistIds.toList(),
      'typeOfPerformance': instance.typeOfPerformance,
      'startingDateTime': instance.startingDateTime?.toIso8601String(),
      'endingDateTime': instance.endingDateTime?.toIso8601String(),
    };
