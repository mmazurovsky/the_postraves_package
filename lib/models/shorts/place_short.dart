import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/dto/image_dimensions.dart';
import 'package:the_postraves_package/dto/wiki_data_dto.dart';
import 'package:the_postraves_package/dto/wiki_followable_type.dart';
import 'package:the_postraves_package/models/geo/city.dart';
import 'package:the_postraves_package/models/geo/coordinate.dart';
import 'package:the_postraves_package/models/geo/country.dart';
import 'package:the_postraves_package/models/interfaces/data_interfaces.dart';

part 'place_short.freezed.dart';
part 'place_short.g.dart';

@freezed
class PlaceShort with _$PlaceShort implements GeneralFollowableInterface {
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

  @override
  Country? get country => city.country;

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
