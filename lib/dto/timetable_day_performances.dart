import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/models/related_to_event/timetable_performance.dart';

part 'timetable_day_performances.freezed.dart';

@freezed
class TimetableDayPerformances with _$TimetableDayPerformances {
  const factory TimetableDayPerformances({
    required DateTime date,
    required List<TimetablePerformance> performances,
  }) = _TimetableDayPerformances;
}
