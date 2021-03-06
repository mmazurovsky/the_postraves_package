// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_full.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaceFull _$_$_PlaceFullFromJson(Map<String, dynamic> json) {
  return _$_PlaceFull(
    about: json['about'] as String?,
    instagramUsername: json['instagramUsername'] as String?,
    soundcloudUsername: json['soundcloudUsername'] as String?,
    id: json['id'] as int,
    name: json['name'] as String,
    overallFollowers: json['overallFollowers'] as int,
    weeklyFollowers: json['weeklyFollowers'] as int,
    isFollowed: json['isFollowed'] as bool,
    imageLink: json['imageLink'] as String?,
    city: City.fromJson(json['city'] as Map<String, dynamic>),
    streetAddress: json['streetAddress'] as String,
    coordinate: Coordinate.fromJson(json['coordinate'] as Map<String, dynamic>),
    isJustCity: json['isJustCity'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$_PlaceFullToJson(_$_PlaceFull instance) =>
    <String, dynamic>{
      'about': instance.about,
      'instagramUsername': instance.instagramUsername,
      'soundcloudUsername': instance.soundcloudUsername,
      'id': instance.id,
      'name': instance.name,
      'overallFollowers': instance.overallFollowers,
      'weeklyFollowers': instance.weeklyFollowers,
      'isFollowed': instance.isFollowed,
      'imageLink': instance.imageLink,
      'city': instance.city.toJson(),
      'streetAddress': instance.streetAddress,
      'coordinate': instance.coordinate.toJson(),
      'isJustCity': instance.isJustCity,
    };
