// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaceWrite _$_$_PlaceWriteFromJson(Map<String, dynamic> json) {
  return _$_PlaceWrite(
    id: json['id'] as int?,
    name: json['name'] as String,
    cityName: json['cityName'] as String,
    streetAddress: json['streetAddress'] as String,
    coordinate: Coordinate.fromJson(json['coordinate'] as Map<String, dynamic>),
    isJustCity: json['isJustCity'] as bool,
    imageLink: json['imageLink'] as String?,
    soundcloudUsername: json['soundcloudUsername'] as String?,
    instagramUsername: json['instagramUsername'] as String?,
    about: json['about'] as String?,
  );
}

Map<String, dynamic> _$_$_PlaceWriteToJson(_$_PlaceWrite instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cityName': instance.cityName,
      'streetAddress': instance.streetAddress,
      'coordinate': instance.coordinate.toJson(),
      'isJustCity': instance.isJustCity,
      'imageLink': instance.imageLink,
      'soundcloudUsername': instance.soundcloudUsername,
      'instagramUsername': instance.instagramUsername,
      'about': instance.about,
    };
