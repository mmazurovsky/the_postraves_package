import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/dto/wiki_followable_type.dart';
import 'package:the_postraves_package/models/geo/country.dart';
import 'package:the_postraves_package/models/interfaces/data_interfaces.dart';
import 'image_dimensions.dart';

part 'wiki_data_dto.freezed.dart';
part 'wiki_data_dto.g.dart';

@freezed
class WikiDataDto with _$WikiDataDto implements FollowableInterfaceWithType {
  const WikiDataDto._();
  const factory WikiDataDto(
      {required String name,
      required String? imageLink,
      @Default(null) ImageDimensions? imageDimensions,
      @Default(null) Country? country,
      required int id,
      required WikiFollowableType type}) = _WikiDataDto;

  factory WikiDataDto.fromJson(Map<String, dynamic> json) =>
      _$WikiDataDtoFromJson(json);
}
