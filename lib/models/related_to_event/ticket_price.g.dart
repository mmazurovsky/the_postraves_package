// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TicketPrice _$_$_TicketPriceFromJson(Map<String, dynamic> json) {
  return _$_TicketPrice(
    name: json['name'] as String?,
    price: (json['price'] as num).toDouble(),
    currency: MoneyCurrency.fromJson(json['currency'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_TicketPriceToJson(_$_TicketPrice instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'currency': instance.currency.toJson(),
    };
