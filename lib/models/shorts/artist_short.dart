import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/dto/image_dimensions.dart';
import 'package:the_postraves_package/dto/wiki_data_dto.dart';
import 'package:the_postraves_package/dto/wiki_followable_type.dart';
import 'package:the_postraves_package/models/geo/country.dart';
import 'package:the_postraves_package/models/interfaces/data_interfaces.dart';

part 'artist_short.freezed.dart';
part 'artist_short.g.dart';

@freezed
class ArtistShort
    with _$ArtistShort
    implements GeneralFollowableInterface, BaseNameInterface {
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
  WikiDataDto convertToWikiDataDto(ImageDimensions? imageDimensions) {
    return WikiDataDto(
      id: id,
      name: name,
      imageLink: imageLink,
      country: country,
      imageDimensions: imageDimensions,
      type: WikiFollowableType.ARTIST,
    );
  }
}
