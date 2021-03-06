import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/models/interfaces/data_interfaces.dart';
import 'country.dart';

part 'city.freezed.dart';
part 'city.g.dart';

@freezed
class City
    with _$City
    implements LocationInterface, BaseNameImageInterface, ShortInterface {
  const City._();
  const factory City(
      {required String name,
      required String localName,
      required Country country,
      required int timeOffset}) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

  @override
  String get emojiCode => country.emojiCode;

  @override
  String? get imageLink => emojiCode;
}
