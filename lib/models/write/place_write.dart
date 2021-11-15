import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/models/geo/coordinate.dart';

part 'place_write.freezed.dart';
part 'place_write.g.dart';

@freezed
class PlaceWrite with _$PlaceWrite {
  const factory PlaceWrite({
    int? id,
    required String name,
    required String cityName,
    required String streetAddress,
    required Coordinate coordinate,
    String? imageLink,
    String? soundcloudUsername,
    String? instagramUsername,
    String? about,
  }) = _PlaceWrite;

  factory PlaceWrite.fromJson(Map<String, dynamic> json) =>
      _$PlaceWriteFromJson(json);
}
