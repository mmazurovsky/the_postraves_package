import 'package:freezed_annotation/freezed_annotation.dart';
import '../geo/country.dart';

part 'artist_full.freezed.dart';
part 'artist_full.g.dart';

@freezed
class ArtistFull
    with _$ArtistFull
        {

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

  // TODO
  // @override
  // String getEntityNameSingularFormString(BuildContext context) {
  //   return AppLocalizations.of(context)!.artistEntityNameSingular;
  // }
  // TODO
  // @override
  // String getEntityNamePluralFormString(BuildContext context) {
  //   return AppLocalizations.of(context)!.artistEntityNamePlural;
  // }

  // TODO
  //   @override
  // WikiDataDto convertToWikiDataDto(ImageDimensions? imageDimensions) {
  //   return WikiDataDto(
  //     id: id,
  //     name: name,
  //     imageLink: imageLink,
  //     country: country,
  //     imageDimensions: imageDimensions,
  //     type: WikiFollowableType.ARTIST,
  //   );
  // }
}
