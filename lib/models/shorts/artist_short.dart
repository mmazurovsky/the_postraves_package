import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/dto/followable_params.dart';
import 'package:the_postraves_package/dto/image_dimensions.dart';
import 'package:the_postraves_package/dto/followable_data.dart';
import 'package:the_postraves_package/dto/followable_type.dart';
import 'package:the_postraves_package/models/geo/country.dart';
import 'package:the_postraves_package/models/interfaces/data_interfaces.dart';

part 'artist_short.freezed.dart';
part 'artist_short.g.dart';

@freezed
class ArtistShort
    with _$ArtistShort
    implements GeneralFollowableInterface, BaseNameInterface, ShortInterface {
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
  FollowableType get type => FollowableType.ARTIST;

  @override
  FollowableId get followableId => FollowableId(
        id: id,
        type: type,
      );

  @override
  FollowableVariables get followableVariables => FollowableVariables(
        overallFollowers: overallFollowers,
        weeklyFollowers: weeklyFollowers,
        isFollowed: isFollowed,
      );
}
