import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/client/date_time_converter.dart';
import 'package:the_postraves_package/dto/followable_params.dart';
import 'package:the_postraves_package/dto/image_dimensions.dart';
import 'package:the_postraves_package/dto/followable_data.dart';
import 'package:the_postraves_package/dto/followable_type.dart';
import 'package:the_postraves_package/models/geo/country.dart';
import 'package:the_postraves_package/models/interfaces/data_interfaces.dart';
import 'package:the_postraves_package/models/related_to_event/event_status.dart';
import 'package:the_postraves_package/models/related_to_event/ticket_price.dart';
import 'place_short.dart';

part 'event_short.freezed.dart';
part 'event_short.g.dart';

@freezed
class EventShort
    with _$EventShort
    implements GeneralFollowableInterface, ShortInterface {
  const EventShort._();
  const factory EventShort({
    required int id,
    required String name,
    required int overallFollowers,
    required int weeklyFollowers,
    required bool isFollowed,
    required EventStatus status,
    @JsonKey(toJson: DateTimeConverter.toJsonNonNullable, fromJson: DateTimeConverter.fromJsonNonNullable)
        required DateTime startDateTime,
    required PlaceShort place,
    required List<TicketPrice>? ticketPrices,
    String? imageLink,
  }) = _EventShort;

  factory EventShort.fromJson(Map<String, dynamic> json) =>
      _$EventShortFromJson(json);

  @override
  Country? get country {
    return place.city.country;
  }

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
  FollowableType get type => FollowableType.EVENT;

  @override
  FollowableId get newFollowableId => FollowableId(
        id: id,
        type: type,
      );

  @override
  FollowableVariables get newFollowableVariables => FollowableVariables(
        overallFollowers: overallFollowers,
        weeklyFollowers: weeklyFollowers,
        isFollowed: isFollowed,
      );
}
