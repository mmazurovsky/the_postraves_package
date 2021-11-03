import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/dto/followable_type.dart';
import 'package:the_postraves_package/models/geo/country.dart';
import 'package:the_postraves_package/models/interfaces/data_interfaces.dart';
import 'image_dimensions.dart';

part 'followable_data.freezed.dart';
part 'followable_data.g.dart';

@freezed
class FollowableData with _$FollowableData implements FollowableInterfaceWithType {
  const FollowableData._();
  const factory FollowableData(
      {required String name,
      required String? imageLink,
      @Default(null) ImageDimensions? imageDimensions,
      @Default(null) Country? country,
      required int id,
      required FollowableType type}) = _FollowableDataDto;

  factory FollowableData.fromJson(Map<String, dynamic> json) =>
      _$FollowableDataFromJson(json);
}
