import 'package:the_postraves_package/dto/followable_params.dart';
import 'package:the_postraves_package/dto/image_dimensions.dart';
import 'package:the_postraves_package/dto/followable_data.dart';
import 'package:the_postraves_package/dto/followable_type.dart';
import 'package:the_postraves_package/models/geo/country.dart';

abstract class BaseIdInterface {
  int get id;
}

abstract class BaseNameInterface {
  String get name;
}

abstract class BaseNameImageInterface implements BaseNameInterface {
  String? get imageLink;
}

abstract class LocationInterface {
  String get emojiCode;
  Country get country;
  String get localName;
  String get name;
}

abstract class FollowableInterfaceWithType
    implements BaseIdInterface, BaseNameImageInterface {
  Country? get country;
  FollowableType get type;
}

abstract class WithTypeInterface {
  FollowableType get type;
}

abstract class WithFollowableParametersInterface {
  FollowableId get newFollowableId;
  FollowableVariables get newFollowableVariables;
}

abstract class GeneralFollowableInterface
    implements
        BaseIdInterface,
        BaseNameImageInterface,
        ConvertableToFollowableDataInterface,
        WithTypeInterface,
        WithFollowableParametersInterface {
  Country? get country;
  int get overallFollowers;
  int get weeklyFollowers;
  bool get isFollowed;
}

abstract class ConvertableToFollowableDataInterface {
  FollowableData convertToFollowableData(ImageDimensions? imageDimensions);
}

abstract class WriteInterface {
  Map<String, dynamic> toJson();
}

abstract class ShortInterface {}
