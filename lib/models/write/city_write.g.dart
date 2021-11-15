// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CityWrite _$_$_CityWriteFromJson(Map<String, dynamic> json) {
  return _$_CityWrite(
    name: json['name'] as String,
    nameRu: json['nameRu'] as String,
    nameEn: json['nameEn'] as String,
    nameDe: json['nameDe'] as String,
    nameFr: json['nameFr'] as String,
    countryName: json['countryName'] as String,
    timeOffset: json['timeOffset'] as int,
  );
}

Map<String, dynamic> _$_$_CityWriteToJson(_$_CityWrite instance) =>
    <String, dynamic>{
      'name': instance.name,
      'nameRu': instance.nameRu,
      'nameEn': instance.nameEn,
      'nameDe': instance.nameDe,
      'nameFr': instance.nameFr,
      'countryName': instance.countryName,
      'timeOffset': instance.timeOffset,
    };
