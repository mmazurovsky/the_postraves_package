import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/client/date_time_converter.dart';
import 'package:the_postraves_package/models/interfaces/data_interfaces.dart';
import 'package:the_postraves_package/models/write/event_write.dart';

part 'timetable_performance_write.freezed.dart';
part 'timetable_performance_write.g.dart';

@freezed
class TimetablePerformanceWrite
    with _$TimetablePerformanceWrite
    implements WriteInterface {
  const factory TimetablePerformanceWrite({
    int? id,
    int? sceneId,
    required Set<int> artistIds,
    String? typeOfPerformance,
    @JsonKey(toJson: DateTimeConverter.toJson, fromJson: DateTimeConverter.fromJson)
        DateTime? startingDateTime,
    @JsonKey(toJson: DateTimeConverter.toJson, fromJson: DateTimeConverter.fromJson)
        DateTime? endingDateTime,
  }) = _TimetablePerformanceWrite;

  factory TimetablePerformanceWrite.fromJson(Map<String, dynamic> json) =>
      _$TimetablePerformanceWriteFromJson(json);
}
