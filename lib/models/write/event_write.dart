import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/models/interfaces/data_interfaces.dart';
import 'package:the_postraves_package/models/related_to_event/ticket_price.dart';

part 'event_write.freezed.dart';
part 'event_write.g.dart';

@freezed
class EventWrite with _$EventWrite implements WriteInterface {
  const factory EventWrite({
    int? id,
    required String name,
    required int placeId,
    @JsonKey(toJson: toJsonDateTimeWithTimeZoneOffset)
        required DateTime startDateTime,
    @JsonKey(toJson: toJsonDateTimeWithTimeZoneOffset)
        required DateTime endDateTime,
    List<TicketPrice>? ticketPrices,
    String? imageLink,
    String? about,
    String? ticketsLink,
  }) = _EventWrite;

  factory EventWrite.fromJson(Map<String, dynamic> json) =>
      _$EventWriteFromJson(json);
}

String? toJsonDateTimeWithTimeZoneOffset(DateTime? dateTime) {
  return dateTime != null
      ? '${dateTime.toLocal().toIso8601String()}+00:00'
      : null;
}
