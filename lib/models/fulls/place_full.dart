import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/dto/image_dimensions.dart';
import 'package:the_postraves_package/dto/wiki_data_dto.dart';
import 'package:the_postraves_package/dto/wiki_followable_type.dart';
import 'package:the_postraves_package/models/geo/country.dart';
import 'package:the_postraves_package/models/interfaces/data_interfaces.dart';
import '../geo/city.dart';
import '../geo/coordinate.dart';

part 'place_full.freezed.dart';
part 'place_full.g.dart';

@freezed
class PlaceFull
    with _$PlaceFull
    implements GeneralFollowableInterface, BaseNameInterface {
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

  @override
  Country? get country => country;

  @override
  WikiDataDto convertToWikiDataDto(ImageDimensions? imageDimensions) {
    return WikiDataDto(
      id: id,
      name: name,
      imageLink: imageLink,
      country: country,
      imageDimensions: imageDimensions,
      type: WikiFollowableType.PLACE,
    );
  }
}
