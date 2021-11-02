enum WikiFollowableType {
  ARTIST,
  UNITY,
  PLACE,
  EVENT,
  USER,
}

extension TypeOfUnifiedRatingModelExtension on WikiFollowableType {

  static const Map<WikiFollowableType, String> _endpoints = {
    WikiFollowableType.ARTIST: 'artist',
    WikiFollowableType.UNITY: 'unity',
    WikiFollowableType.PLACE: 'place',
    WikiFollowableType.EVENT: 'event',
    WikiFollowableType.USER: 'user',
  };

  String get endpoint => _endpoints[this]!;
}
