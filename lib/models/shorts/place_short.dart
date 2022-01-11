import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/dto/followable_params.dart';
import 'package:the_postraves_package/dto/image_dimensions.dart';
import 'package:the_postraves_package/dto/followable_data.dart';
import 'package:the_postraves_package/dto/followable_type.dart';
import 'package:the_postraves_package/models/geo/city.dart';
import 'package:the_postraves_package/models/geo/coordinate.dart';
import 'package:the_postraves_package/models/geo/country.dart';
import 'package:the_postraves_package/models/interfaces/data_interfaces.dart';

part 'place_short.freezed.dart';
part 'place_short.g.dart';

@freezed
class PlaceShort
    with _$PlaceShort
    implements GeneralFollowableInterface, ShortInterface {
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
    required bool isJustCity,
    String? imageLink,
  }) = _PlaceShort;

  factory PlaceShort.fromJson(Map<String, dynamic> json) =>
      _$PlaceShortFromJson(json);

  @override
  Country? get country => city.country;

  @override
  FollowableData convertToFollowableData(ImageDimensions? imageDimensions) {
    return FollowableData(
      id: id,
      name: name,
      imageLink: imageLink,
      country: country,
      imageDimensions: imageDimensions,
      type: type,
    );
  }

  @override
  FollowableType get type => FollowableType.PLACE;

  @override
  FollowableId get newFollowableId => FollowableId(
        id: id,
        type: type,
      );

  @override
  FollowableVariables get newFollowableVariables => FollowableVariables(
        overallFollowers: overallFollowers,
        weeklyFollowers: weeklyFollowers,
        isFollowed: isFollowed,
      );
}
