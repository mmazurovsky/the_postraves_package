import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/models/interfaces/data_interfaces.dart';

part 'artist_write.freezed.dart';
part 'artist_write.g.dart';

@freezed
class ArtistWrite with _$ArtistWrite implements WriteInterface {
  const factory ArtistWrite({
    int? id,
    required String name,
    String? imageLink,
    String? countryName,
    String? soundcloudUsername,
    String? instagramUsername,
    String? about,
  }) = _ArtistWrite;

  factory ArtistWrite.fromJson(Map<String, dynamic> json) =>
      _$ArtistWriteFromJson(json);
}
