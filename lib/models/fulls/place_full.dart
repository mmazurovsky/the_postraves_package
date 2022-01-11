import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/dto/followable_params.dart';
import 'package:the_postraves_package/dto/image_dimensions.dart';
import 'package:the_postraves_package/dto/followable_data.dart';
import 'package:the_postraves_package/dto/followable_type.dart';
import 'package:the_postraves_package/models/geo/country.dart';
import 'package:the_postraves_package/models/interfaces/data_interfaces.dart';
import '../geo/city.dart';
import '../geo/coordinate.dart';

part 'place_full.freezed.dart';
part 'place_full.g.dart';

@freezed
class PlaceFull with _$PlaceFull implements GeneralFollowableInterface {
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
    @Default(false) bool isJustCity,
  }) = _PlaceFull;

  factory PlaceFull.fromJson(Map<String, dynamic> json) =>
      _$PlaceFullFromJson(json);

  @override
  Country? get country => country;

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
