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
    startingDateTime:
        const DateTimeConverter().fromJson(json['startingDateTime'] as String?),
    endingDateTime:
        const DateTimeConverter().fromJson(json['endingDateTime'] as String?),
  );
}

Map<String, dynamic> _$_$_TimetablePerformanceWriteToJson(
        _$_TimetablePerformanceWrite instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sceneId': instance.sceneId,
      'artistIds': instance.artistIds.toList(),
      'typeOfPerformance': instance.typeOfPerformance,
      'startingDateTime':
          const DateTimeConverter().toJson(instance.startingDateTime),
      'endingDateTime':
          const DateTimeConverter().toJson(instance.endingDateTime),
    };
