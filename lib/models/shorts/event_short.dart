import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/client/date_time_converter.dart';
import 'package:the_postraves_package/models/related_to_event/event_status.dart';
import 'package:the_postraves_package/models/related_to_event/ticket_price.dart';
import 'place_short.dart';

part 'event_short.freezed.dart';
part 'event_short.g.dart';

@freezed
class EventShort
    with _$EventShort
    // implements GeneralFollowableInterface, EntityNamesInterface 
    {
  const EventShort._();
  const factory EventShort({
    required int id,
    required String name,
    required int overallFollowers,
    required int weeklyFollowers,
    required bool isFollowed,
    required EventStatus status,
    @DateTimeConverter() required DateTime startDateTime,
    required PlaceShort place,
    required List<TicketPrice>? ticketPrices,
    String? imageLink,
  }) = _EventShort;

  factory EventShort.fromJson(Map<String, dynamic> json) =>
      _$EventShortFromJson(json);

  // @DateTimeConverter()
  // final DateTime startDateTime;

//todo
  // @override
  // Country? get country {
  //   return place.city.country;
  // }

  // TicketPriceRange? get priceRangeOfTickets {
  //   return ticketPrices?.isEmpty == null || ticketPrices?.isEmpty == true
  //       ? null
  //       : FormattingUtils.getTicketPriceRangeForTickets(ticketPrices!);
  // }

  // @override
  // String getEntityNameSingularFormString(BuildContext context) {
  //   return AppLocalizations.of(context)!.eventEntityNameSingular;
  // }

  // @override
  // String getEntityNamePluralFormString(BuildContext context) {
  //   return AppLocalizations.of(context)!.eventEntityNamePlural;
  // }

  // @override
  // WikiDataDto convertToWikiDataDto(ImageDimensions? imageDimensions) {
  //   return WikiDataDto(
  //     id: id,
  //     name: name,
  //     imageLink: imageLink,
  //     country: country,
  //     imageDimensions: imageDimensions,
  //     type: WikiFollowableType.EVENT,
  //   );
  // }
}
