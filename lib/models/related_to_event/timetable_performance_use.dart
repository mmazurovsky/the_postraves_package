import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../models/shorts/artist_short.dart';

part 'timetable_performance_use.freezed.dart';

@freezed
class TimetablePerformanceUse with _$TimetablePerformanceUse {
  const factory TimetablePerformanceUse({
    int? id,
    String? internalId,
    required List<ArtistShort> artists,
    DateTime? startingDateTime,
    DateTime? endingDateTime,
    String? typeOfPerformance,
  }) = _TimetablePerformanceUse;
}
