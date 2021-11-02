import 'package:freezed_annotation/freezed_annotation.dart';
import '../geo/city.dart';
import '../geo/coordinate.dart';
import '../geo/country.dart';

part 'place_full.freezed.dart';
part 'place_full.g.dart';

@freezed
class PlaceFull
    with _$PlaceFull
        {

  const PlaceFull._();
  const factory PlaceFull({
    String? about,
    String? instagramUsername,
    String? soundcloudUsername,
    required int id,
    required String name,
    required int overallFollowers,
    required int weeklyFollowers,
    required bool isFollowed,
    String? imageLink,
    required City city,
    required String streetAddress,
    required Coordinate coordinate,
  }) = _PlaceFull;

  factory PlaceFull.fromJson(Map<String, dynamic> json) =>
      _$PlaceFullFromJson(json);

  // todo
  // @override
  // String getEntityNameSingularFormString(BuildContext context) {
  //   return AppLocalizations.of(context)!.placeEntityNameSingular;
  // }

  // @override
  // String getEntityNamePluralFormString(BuildContext context) {
  //   return AppLocalizations.of(context)!.placeEntityNamePlural;
  // }

  //todo
  // @override
  // Country? get country => country;
//todo
  //   @override
  // WikiDataDto convertToWikiDataDto(ImageDimensions? imageDimensions) {
  //   return WikiDataDto(
  //     id: id,
  //     name: name,
  //     imageLink: imageLink,
  //     country: country,
  //     imageDimensions: imageDimensions,
  //     type: WikiFollowableType.PLACE,
  //   );
  // }
}
