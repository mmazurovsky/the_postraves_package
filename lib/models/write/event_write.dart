import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/client/date_time_converter.dart';
import 'package:the_postraves_package/models/interfaces/data_interfaces.dart';
import 'package:the_postraves_package/models/related_to_event/ticket_price.dart';
import 'package:the_postraves_package/models/write/ticket_price_write.dart';

part 'event_write.freezed.dart';
part 'event_write.g.dart';

@freezed
class EventWrite with _$EventWrite implements WriteInterface {
  const factory EventWrite({
    int? id,
    required String name,
    required int placeId,
    @JsonKey(toJson: DateTimeConverter.toJsonNonNullable, fromJson: DateTimeConverter.fromJsonNonNullable)
        required DateTime startDateTime,
    @JsonKey(toJson: DateTimeConverter.toJsonNonNullable, fromJson: DateTimeConverter.fromJsonNonNullable)
        required DateTime endDateTime,
    List<TicketPriceWrite>? ticketPrices,
    String? imageLink,
    String? about,
    String? ticketsLink,
  }) = _EventWrite;

  factory EventWrite.fromJson(Map<String, dynamic> json) =>
      _$EventWriteFromJson(json);
}
