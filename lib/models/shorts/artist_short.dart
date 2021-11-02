import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/models/geo/country.dart';

part 'artist_short.freezed.dart';
part 'artist_short.g.dart';

@freezed
class ArtistShort
    with _$ArtistShort
    // implements
    //     GeneralFollowableInterface,
    //     BaseNameInterface,
    //     EntityNamesInterface 
        {
  const ArtistShort._();
  const factory ArtistShort({
    required int id,
    required String name,
    required int overallFollowers,
    required int weeklyFollowers,
    required bool isFollowed,
    String? imageLink,
    @Default(null) Country? country, //BUG!: in freezed package
  }) = _ArtistShort;

  factory ArtistShort.fromJson(Map<String, dynamic> json) =>
      _$ArtistShortFromJson(json);


//todo
  // @override
  // String getEntityNameSingularFormString(BuildContext context) {
  //   return AppLocalizations.of(context)!.artistEntityNameSingular;
  // }

  // @override
  // String getEntityNamePluralFormString(BuildContext context) {
  //   return AppLocalizations.of(context)!.artistEntityNamePlural;
  // }

  // @override
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
