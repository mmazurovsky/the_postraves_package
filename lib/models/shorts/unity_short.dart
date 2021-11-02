import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/dto/image_dimensions.dart';
import 'package:the_postraves_package/dto/wiki_data_dto.dart';
import 'package:the_postraves_package/dto/wiki_followable_type.dart';
import 'package:the_postraves_package/models/geo/country.dart';
import 'package:the_postraves_package/models/interfaces/data_interfaces.dart';

part 'unity_short.freezed.dart';
part 'unity_short.g.dart';

@freezed
class UnityShort
    with _$UnityShort
    implements GeneralFollowableInterface {
  const UnityShort._();
  const factory UnityShort({
    required int id,
    required String name,
    required int overallFollowers,
    required int weeklyFollowers,
    required bool isFollowed,
    String? imageLink,
    @Default(null) Country? country, //BUG!: bug in freeezed package
  }) = _UnityShort;

  factory UnityShort.fromJson(Map<String, dynamic> json) =>
      _$UnityShortFromJson(json);

  @override
  WikiDataDto convertToWikiDataDto(ImageDimensions? imageDimensions) {
    return WikiDataDto(
      id: id,
      name: name,
      imageLink: imageLink,
      country: country,
      imageDimensions: imageDimensions,
      type: WikiFollowableType.UNITY,
    );
  }
}
