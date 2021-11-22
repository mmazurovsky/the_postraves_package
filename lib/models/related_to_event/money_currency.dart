// enum MoneyCurrency { RUB, EUR, USD }

// extension MoneyCurrencyExtension on MoneyCurrency {
//   static const currencySymbols = {
//     MoneyCurrency.RUB: '₽',
//     MoneyCurrency.EUR: '€',
//     MoneyCurrency.USD: r'$',
//   };

//   String? get currencySymbol => currencySymbols[this];
// }

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/models/interfaces/data_interfaces.dart';

part 'money_currency.freezed.dart';
part 'money_currency.g.dart';

@freezed
class MoneyCurrency
    with _$MoneyCurrency
    implements WriteInterface, ShortInterface {
  const MoneyCurrency._();
  const factory MoneyCurrency({
    required String name,
    required String symbol,
  }) = _MoneyCurrency;

  factory MoneyCurrency.fromJson(Map<String, dynamic> json) =>
      _$MoneyCurrencyFromJson(json);
}
