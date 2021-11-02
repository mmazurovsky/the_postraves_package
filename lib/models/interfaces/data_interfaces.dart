import 'package:the_postraves_package/dto/image_dimensions.dart';
import 'package:the_postraves_package/dto/wiki_data_dto.dart';
import 'package:the_postraves_package/dto/wiki_followable_type.dart';
import 'package:the_postraves_package/models/geo/country.dart';

abstract class BaseIdInterface {
  int get id;
}

abstract class BaseNameInterface {
  String get name;
}

abstract class LocationInterface {
  String get emojiCode;
  Country get country;
  String get localName;
  String get name;
}

abstract class FollowableInterfaceWithType
    implements BaseIdInterface, BaseNameInterface {
  String? get imageLink;
  Country? get country;
  WikiFollowableType get type;
}

abstract class GeneralFollowableInterface
    implements
        BaseIdInterface,
        BaseNameInterface,
        ConvertableToWikiDataDtoInterface {
  String? get imageLink;
  Country? get country;
  int get overallFollowers;
  int get weeklyFollowers;
  bool get isFollowed;
  Map<String, dynamic> toJson();
}

abstract class ConvertableToWikiDataDtoInterface {
  WikiDataDto convertToWikiDataDto(ImageDimensions? imageDimensions);
}
