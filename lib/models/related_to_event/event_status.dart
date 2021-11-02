enum EventStatus { UPCOMING, PRESALE, TOMORROW, TODAY, LIVE, PAST, CANCELLED }

//TODO
// extension EventStatusExtension on EventStatus {
//   static _getEventStatusNameMapping(BuildContext context, EventStatus status) =>
//       {
//         EventStatus.UPCOMING:
//             AppLocalizations.of(context)!.wikiEventStatusUpcoming,
//         EventStatus.PRESALE:
//             AppLocalizations.of(context)!.wikiEventStatusPresale,
//         EventStatus.TOMORROW:
//             AppLocalizations.of(context)!.wikiEventStatusTomorrow,
//         EventStatus.TODAY: AppLocalizations.of(context)!.wikiEventStatusToday,
//         EventStatus.LIVE: AppLocalizations.of(context)!.wikiEventStatusLive,
//         EventStatus.PAST: AppLocalizations.of(context)!.wikiEventStatusPast,
//         EventStatus.CANCELLED: AppLocalizations.of(context)!.wikiEventStatusCancelled,
//       }[status];

//   String getStatusName(BuildContext context) =>
//       _getEventStatusNameMapping(context, this);
// }
