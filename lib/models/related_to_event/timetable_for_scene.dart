import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../models/related_to_place/scene.dart';
import 'timetable_performance.dart';

part 'timetable_for_scene.freezed.dart';
part 'timetable_for_scene.g.dart';

@freezed
class TimetableForScene with _$TimetableForScene {

  const factory TimetableForScene({
    required Scene? scene,
    required List<TimetablePerformance> performances,
  }) = _TimetableForScene;

  factory TimetableForScene.fromJson(Map<String, dynamic> json) =>
      _$TimetableForSceneFromJson(json);
}
