import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/models/geo/country.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import '../../common/constants/my_constants.dart';
// import '../../core/models/geo/country.dart';
// import '../../core/models/interfaces/data_interfaces.dart';
// import '../../inner_data/dto/image_dimensions.dart';
// import '../../inner_data/dto/wiki_data_dto.dart';
// import '../../inner_data/enum/wiki_rating_type.dart';

part 'unity_short.freezed.dart';
part 'unity_short.g.dart';

@freezed
class UnityShort
    with _$UnityShort
    // implements GeneralFollowableInterface, EntityNamesInterface 
    {
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

  //todo
  // @override
  // String getEntityNameSingularFormString(BuildContext context) {
  //   return AppLocalizations.of(context)!.unityEntityNameSingular;
  // }

  // @override
  // String getEntityNamePluralFormString(BuildContext context) {
  //   return AppLocalizations.of(context)!.unityEntityNamePlural;
  // }

  // @override
  // WikiDataDto convertToWikiDataDto(ImageDimensions? imageDimensions) {
  //   return WikiDataDto(
  //     id: id,
  //     name: name,
  //     imageLink: imageLink,
  //     country: country,
  //     imageDimensions: imageDimensions,
  //     type: WikiFollowableType.UNITY,
  //   );
  // }
}
