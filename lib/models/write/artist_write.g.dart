// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArtistWrite _$_$_ArtistWriteFromJson(Map<String, dynamic> json) {
  return _$_ArtistWrite(
    id: json['id'] as int?,
    name: json['name'] as String,
    imageLink: json['imageLink'] as String?,
    countryName: json['countryName'] as String?,
    soundcloudUsername: json['soundcloudUsername'] as String?,
    instagramUsername: json['instagramUsername'] as String?,
    about: json['about'] as String?,
  );
}

Map<String, dynamic> _$_$_ArtistWriteToJson(_$_ArtistWrite instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageLink': instance.imageLink,
      'countryName': instance.countryName,
      'soundcloudUsername': instance.soundcloudUsername,
      'instagramUsername': instance.instagramUsername,
      'about': instance.about,
    };
