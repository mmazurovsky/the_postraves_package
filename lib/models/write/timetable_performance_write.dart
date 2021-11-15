import 'package:freezed_annotation/freezed_annotation.dart';

part 'timetable_performance_write.freezed.dart';
part 'timetable_performance_write.g.dart';

@freezed
class TimetablePerformanceWrite with _$TimetablePerformanceWrite {
  const factory TimetablePerformanceWrite({
    int? id,
    int? sceneId,
    required Set<int> artistIds,
    String? typeOfPerformance,
    DateTime? startingDateTime,
    DateTime? endingDateTime,
  }) = _TimetablePerformanceWrite;

  factory TimetablePerformanceWrite.fromJson(Map<String, dynamic> json) =>
      _$TimetablePerformanceWriteFromJson(json);
}
