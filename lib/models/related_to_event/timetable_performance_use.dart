import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/models/related_to_place/scene.dart';
import '../../../models/shorts/artist_short.dart';

part 'timetable_performance_use.freezed.dart';

@freezed
class TimetablePerformanceUse with _$TimetablePerformanceUse {
  const factory TimetablePerformanceUse({
    int? id,
    String? internalId,
    required List<ArtistShort> artists,
    Scene? scene,
    DateTime? startingDateTime,
    DateTime? endingDateTime,
    String? typeOfPerformance,
  }) = _TimetablePerformanceUse;
}
