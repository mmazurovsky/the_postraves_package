import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/dto/image_dimensions.dart';
import 'package:the_postraves_package/dto/wiki_data_dto.dart';
import 'package:the_postraves_package/dto/wiki_followable_type.dart';
import 'package:the_postraves_package/models/geo/country.dart';
import 'package:the_postraves_package/models/interfaces/data_interfaces.dart';
import 'package:the_postraves_package/models/related_to_event/event_status.dart';
import '../../../models/shorts/place_short.dart';
import '../../client/date_time_converter.dart';
import '../related_to_event/ticket_price.dart';

part 'event_full.freezed.dart';
part 'event_full.g.dart';

@freezed
class EventFull
    with _$EventFull
    implements GeneralFollowableInterface, BaseNameInterface {
  const EventFull._();
  const factory EventFull({
    required int id,
    required String name,
    required int overallFollowers,
    required int weeklyFollowers,
    required bool isFollowed,
    required EventStatus status,
    @DateTimeConverter() required DateTime startDateTime,
    @DateTimeConverter() required DateTime endDateTime,
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
  WikiDataDto convertToWikiDataDto(ImageDimensions? imageDimensions) {
    return WikiDataDto(
      id: id,
      name: name,
      imageLink: imageLink,
      country: country,
      imageDimensions: imageDimensions,
      type: WikiFollowableType.EVENT,
    );
  }
}
