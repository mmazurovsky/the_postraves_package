enum FollowableType {
  ARTIST,
  UNITY,
  PLACE,
  EVENT,
  USER,
}

extension TypeOfUnifiedRatingModelExtension on FollowableType {

  static const Map<FollowableType, String> _endpoints = {
    FollowableType.ARTIST: 'artist',
    FollowableType.UNITY: 'unity',
    FollowableType.PLACE: 'place',
    FollowableType.EVENT: 'event',
    FollowableType.USER: 'user',
  };

  String get endpoint => _endpoints[this]!;
}
