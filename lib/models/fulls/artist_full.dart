import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/dto/image_dimensions.dart';
import 'package:the_postraves_package/dto/followable_data.dart';
import 'package:the_postraves_package/dto/followable_type.dart';
import 'package:the_postraves_package/models/interfaces/data_interfaces.dart';
import '../geo/country.dart';

part 'artist_full.freezed.dart';
part 'artist_full.g.dart';

@freezed
class ArtistFull
    with _$ArtistFull
    implements GeneralFollowableInterface {
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
}
