import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../models/shorts/artist_short.dart';
import '../../client/date_time_converter.dart';

part 'timetable_performance.freezed.dart';
part 'timetable_performance.g.dart';

@freezed
class TimetablePerformance with _$TimetablePerformance {
  const factory TimetablePerformance({
    required int id,
    required List<ArtistShort> artists,
    @DateTimeConverter() DateTime? startingDateTime,
    @DateTimeConverter() DateTime? endingDateTime,
    String? typeOfPerformance,
  }) = _TimetablePerformance;

  factory TimetablePerformance.fromJson(Map<String, dynamic> json) =>
      _$TimetablePerformanceFromJson(json);
}
