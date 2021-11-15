// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unity_write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UnityWrite _$_$_UnityWriteFromJson(Map<String, dynamic> json) {
  return _$_UnityWrite(
    id: json['id'] as int?,
    name: json['name'] as String,
    imageLink: json['imageLink'] as String?,
    countryName: json['countryName'] as String?,
    soundcloudUsername: json['soundcloudUsername'] as String?,
    instagramUsername: json['instagramUsername'] as String?,
    bandcampUsername: json['bandcampUsername'] as String?,
    about: json['about'] as String?,
  );
}

Map<String, dynamic> _$_$_UnityWriteToJson(_$_UnityWrite instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageLink': instance.imageLink,
      'countryName': instance.countryName,
      'soundcloudUsername': instance.soundcloudUsername,
      'instagramUsername': instance.instagramUsername,
      'bandcampUsername': instance.bandcampUsername,
      'about': instance.about,
    };
