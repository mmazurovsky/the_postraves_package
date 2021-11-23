import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/models/geo/coordinate.dart';
import 'package:the_postraves_package/models/interfaces/data_interfaces.dart';

part 'place_write.freezed.dart';
part 'place_write.g.dart';

@freezed
class PlaceWrite with _$PlaceWrite implements WriteInterface {
  const factory PlaceWrite({
    int? id,
    required String name,
    required String cityName,
    required String streetAddress,
    required Coordinate coordinate,
    required bool isJustCity,
    String? imageLink,
    String? soundcloudUsername,
    String? instagramUsername,
    String? about,
  }) = _PlaceWrite;

  factory PlaceWrite.fromJson(Map<String, dynamic> json) =>
      _$PlaceWriteFromJson(json);
}
