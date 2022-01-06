import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/dto/followable_params.dart';
import 'package:the_postraves_package/dto/image_dimensions.dart';
import 'package:the_postraves_package/dto/followable_data.dart';
import 'package:the_postraves_package/dto/followable_type.dart';
import 'package:the_postraves_package/models/geo/country.dart';
import 'package:the_postraves_package/models/interfaces/data_interfaces.dart';
import 'package:the_postraves_package/models/related_to_event/event_status.dart';
import '../../../models/shorts/place_short.dart';
import '../../client/date_time_converter.dart';
import '../related_to_event/ticket_price.dart';

part 'event_full.freezed.dart';
part 'event_full.g.dart';

@freezed
class EventFull with _$EventFull implements GeneralFollowableInterface {
  const EventFull._();
  const factory EventFull({
    required int id,
    required String name,
    required int overallFollowers,
    required int weeklyFollowers,
    required bool isFollowed,
    required EventStatus status,
    @JsonKey(toJson: DateTimeConverter.toJsonNonNullable, fromJson: DateTimeConverter.fromJsonNonNullable)
        required DateTime startDateTime,
    @JsonKey(toJson: DateTimeConverter.toJsonNonNullable, fromJson: DateTimeConverter.fromJsonNonNullable)
        required DateTime endDateTime,
    required PlaceShort place,
    String? imageLink,
    String? about,
    String? ticketsLink,
    List<TicketPrice>? ticketPrices,
  }) = _EventFull;

  factory EventFull.fromJson(Map<String, dynamic> json) =>
      _$EventFullFromJson(json);

  @override
  Country? get country => country;

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
