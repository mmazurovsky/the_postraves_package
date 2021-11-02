import 'package:freezed_annotation/freezed_annotation.dart';
import 'country.dart';

part 'city.freezed.dart';
part 'city.g.dart';

@freezed
class City with _$City 
{
  const City._();
  const factory City({
    required String name,
    required String localName,
    required Country country,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

//todo
  // @override
  // String get emojiCode => country.emojiCode;
}
