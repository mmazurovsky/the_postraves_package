import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:the_postraves_package/models/interfaces/data_interfaces.dart';

part 'country.freezed.dart';
part 'country.g.dart';

@freezed
class Country with _$Country implements LocationInterface, BaseNameImageInterface, ShortInterface {
  const Country._();
  const factory Country({
    required String name,
    required String localName,
    String? phoneCode,
    required String emojiCode,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);

  @override
  Country get country => this;

  @override
  String? get imageLink => emojiCode;
}
