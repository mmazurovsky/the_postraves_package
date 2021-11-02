import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'country.freezed.dart';
part 'country.g.dart';

@freezed
class Country with _$Country 
// implements LocationInterface 
{

  const Country._();
  const factory Country({
    required String name,
    required String localName,
    String? phoneCode,
    required String emojiCode,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);

//todo
  // @override
  // Country get country => this;
//todo
  // @override
  // String get emojiCode => emojiCode;
}
