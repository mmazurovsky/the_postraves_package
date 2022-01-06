import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/dto/followable_data.dart';
import 'package:the_postraves_package/dto/followable_params.dart';
import 'package:the_postraves_package/dto/image_dimensions.dart';
import 'package:the_postraves_package/dto/followable_type.dart';
import 'package:the_postraves_package/models/interfaces/data_interfaces.dart';
import '../geo/country.dart';

part 'unity_full.freezed.dart';
part 'unity_full.g.dart';

@freezed
class UnityFull with _$UnityFull implements GeneralFollowableInterface {
  const UnityFull._();
  const factory UnityFull({
    String? about,
    String? instagramUsername,
    String? soundcloudUsername,
    String? bandcampUsername,
    required int id,
    required String name,
    required int overallFollowers,
    required int weeklyFollowers,
    required bool isFollowed,
    String? imageLink,
    Country? country,
  }) = _UnityFull;

  factory UnityFull.fromJson(Map<String, dynamic> json) =>
      _$UnityFullFromJson(json);

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
  FollowableType get type => FollowableType.UNITY;

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
