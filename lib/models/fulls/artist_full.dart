import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/dto/image_dimensions.dart';
import 'package:the_postraves_package/dto/wiki_data_dto.dart';
import 'package:the_postraves_package/dto/wiki_followable_type.dart';
import 'package:the_postraves_package/models/interfaces/data_interfaces.dart';
import '../geo/country.dart';

part 'artist_full.freezed.dart';
part 'artist_full.g.dart';

@freezed
class ArtistFull
    with _$ArtistFull
    implements GeneralFollowableInterface, BaseNameInterface {
  const ArtistFull._();
  const factory ArtistFull({
    required int id,
    required String name,
    required int overallFollowers,
    required int weeklyFollowers,
    required bool isFollowed,
    String? imageLink,
    Country? country,
    String? about,
    String? soundcloudUsername,
    String? instagramUsername,
  }) = _ArtistFull;

  factory ArtistFull.fromJson(Map<String, dynamic> json) =>
      _$ArtistFullFromJson(json);

  @override
  WikiDataDto convertToWikiDataDto(ImageDimensions? imageDimensions) {
    return WikiDataDto(
      id: id,
      name: name,
      imageLink: imageLink,
      country: country,
      imageDimensions: imageDimensions,
      type: WikiFollowableType.ARTIST,
    );
  }
}
