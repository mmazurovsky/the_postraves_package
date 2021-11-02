import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/models/geo/city.dart';
import 'package:the_postraves_package/models/geo/coordinate.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import '../../common/constants/my_constants.dart';
// import '../../core/models/geo/city.dart';
// import '../../core/models/geo/coordinate.dart';
// import '../../core/models/geo/country.dart';
// import '../../core/models/interfaces/data_interfaces.dart';
// import '../../inner_data/dto/image_dimensions.dart';
// import '../../inner_data/dto/wiki_data_dto.dart';
// import '../../inner_data/enum/wiki_rating_type.dart';

part 'place_short.freezed.dart';
part 'place_short.g.dart';

@freezed
class PlaceShort
    with _$PlaceShort
    // implements
    //     GeneralFollowableInterface,
    //     EntityNamesInterface 
        {

  const PlaceShort._();
  const factory PlaceShort({
    required City city,
    required String streetAddress,
    required Coordinate coordinate,
    required int id,
    required String name,
    required int overallFollowers,
    required int weeklyFollowers,
    required bool isFollowed,
    String? imageLink,
  }) = _PlaceShort;

  factory PlaceShort.fromJson(Map<String, dynamic> json) =>
      _$PlaceShortFromJson(json);

  //todo
  // @override
  // String getEntityNameSingularFormString(BuildContext context) {
  //   return AppLocalizations.of(context)!.placeEntityNameSingular;
  // }

  // @override
  // String getEntityNamePluralFormString(BuildContext context) {
  //   return AppLocalizations.of(context)!.placeEntityNamePlural;
  // }

  // @override
  // Country? get country => city.country;

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
