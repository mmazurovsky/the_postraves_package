import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_write.freezed.dart';
part 'country_write.g.dart';

@freezed
class CountryWrite with _$CountryWrite {
  const factory CountryWrite({
    required String name,
    required String nameRu,
    required String nameEn,
    required String nameDe,
    required String nameFr,
    required String phoneCode,
  }) = _CountryWrite;

  factory CountryWrite.fromJson(Map<String, dynamic> json) =>
      _$CountryWriteFromJson(json);
}
