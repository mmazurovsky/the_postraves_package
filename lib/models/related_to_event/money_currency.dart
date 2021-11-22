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

part 'money_currency.freezed.dart';
part 'money_currency.g.dart';

@freezed
class MoneyCurrency with _$MoneyCurrency {
  const MoneyCurrency._();
  const factory MoneyCurrency({
    required String currency,
    required String symbol,
  }) = _MoneyCurrency;

  factory MoneyCurrency.fromJson(Map<String, dynamic> json) =>
      _$MoneyCurrencyFromJson(json);
}
