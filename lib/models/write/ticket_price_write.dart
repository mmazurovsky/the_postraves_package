import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_price_write.freezed.dart';
part 'ticket_price_write.g.dart';

@freezed
class TicketPriceWrite with _$TicketPriceWrite {

  const factory TicketPriceWrite({
    String? name,
    required double price,
    required String currency,
  }) = _TicketPriceWrite;

  factory TicketPriceWrite.fromJson(Map<String, dynamic> json) =>
      _$TicketPriceWriteFromJson(json);
}
