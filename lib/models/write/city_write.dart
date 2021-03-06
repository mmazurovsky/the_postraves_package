import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/models/interfaces/data_interfaces.dart';

part 'city_write.freezed.dart';
part 'city_write.g.dart';

@freezed
class CityWrite with _$CityWrite implements WriteInterface {
  const factory CityWrite({
    required String name,
    required String nameRu,
    required String nameEn,
    required String nameDe,
    required String nameFr,
    required String countryName,
    required int timeOffset
  }) = _CityWrite;

  factory CityWrite.fromJson(Map<String, dynamic> json) =>
      _$CityWriteFromJson(json);
}
