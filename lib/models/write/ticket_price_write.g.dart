// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_price_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TicketPriceWrite _$_$_TicketPriceWriteFromJson(Map<String, dynamic> json) {
  return _$_TicketPriceWrite(
    name: json['name'] as String?,
    price: (json['price'] as num).toDouble(),
    currency: json['currency'] as String,
  );
}

Map<String, dynamic> _$_$_TicketPriceWriteToJson(
        _$_TicketPriceWrite instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'currency': instance.currency,
    };
