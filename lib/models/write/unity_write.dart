import 'package:freezed_annotation/freezed_annotation.dart';

part 'unity_write.freezed.dart';
part 'unity_write.g.dart';

@freezed
class UnityWrite with _$UnityWrite {
  const factory UnityWrite({
    int? id,
    required String name,
    String? imageLink,
    String? countryName,
    String? soundcloudUsername,
    String? instagramUsername,
    String? bandcampUsername,
    String? about,
  }) = _UnityWrite;

  factory UnityWrite.fromJson(Map<String, dynamic> json) =>
      _$UnityWriteFromJson(json);
}
