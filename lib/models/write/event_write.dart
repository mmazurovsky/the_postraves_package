import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/models/related_to_event/ticket_price.dart';

part 'event_write.freezed.dart';
part 'event_write.g.dart';

@freezed
class EventWrite with _$EventWrite {
  const factory EventWrite({
    int? id,
    required String name,
    required int placeId,
    required DateTime startDateTime,
    required DateTime endDateTime,
    List<TicketPrice>? ticketPrices,
    Set<int>? organizers,
    String? imageLink,
    String? about,
    String? ticketsLink,
  }) = _EventWrite;

  factory EventWrite.fromJson(Map<String, dynamic> json) =>
      _$EventWriteFromJson(json);
}
