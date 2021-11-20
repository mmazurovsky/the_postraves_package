import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/models/related_to_event/timetable_for_scene.dart';
import 'package:the_postraves_package/models/related_to_place/scene.dart';
import 'timetable_day_performances.dart';

part 'timetable_for_scene_by_day.freezed.dart';

@freezed
class TimetableForSceneByDay with _$TimetableForSceneByDay {
  const TimetableForSceneByDay._();
  const factory TimetableForSceneByDay({
    required Scene? scene,
    required List<TimetableDayPerformances> timetableDayPerformances,
  }) = _TimetableForSceneByDay;

  factory TimetableForSceneByDay.fromModel(
      TimetableForScene timetableForSceneModel) {
    DateTime? _getOnlyDate(DateTime? dateTime) {
      return dateTime != null
          ? DateTime(dateTime.year, dateTime.month, dateTime.day)
          : null;
    }

    List<TimetableDayPerformances> dayPerformances = [];
    Set<DateTime?> sceneDays = {};

    for (var performance in timetableForSceneModel.performances) {
      DateTime? performanceDate = _getOnlyDate(performance.startingDateTime);
      if (sceneDays.contains(performanceDate)) {
        dayPerformances
            .firstWhere((element) => element.date == performanceDate)
            .performances
            .add(performance);
      } else {
        sceneDays.add(performanceDate);
        dayPerformances.add(
          TimetableDayPerformances(
            date: performanceDate,
            performances: [performance],
          ),
        );
      }
    }

    return TimetableForSceneByDay(
        scene: timetableForSceneModel.scene,
        timetableDayPerformances: dayPerformances);
  }
}
