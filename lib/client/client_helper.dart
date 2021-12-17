import 'package:the_postraves_package/dto/followable_type.dart';
import 'package:the_postraves_package/models/fulls/artist_full.dart';
import 'package:the_postraves_package/models/fulls/event_full.dart';
import 'package:the_postraves_package/models/fulls/place_full.dart';
import 'package:the_postraves_package/models/fulls/unity_full.dart';
import 'package:the_postraves_package/models/geo/city.dart';
import 'package:the_postraves_package/models/geo/country.dart';
import 'package:the_postraves_package/models/related_to_event/money_currency.dart';
import 'package:the_postraves_package/models/related_to_place/scene.dart';
import 'package:the_postraves_package/models/shorts/artist_short.dart';
import 'package:the_postraves_package/models/shorts/event_short.dart';
import 'package:the_postraves_package/models/shorts/place_short.dart';
import 'package:the_postraves_package/models/shorts/unity_short.dart';
import 'package:the_postraves_package/models/write/city_write.dart';
import 'package:the_postraves_package/models/write/country_write.dart';

abstract class ClientHelper<DATA> {
  String getEndpoint();
  DATA deserialize(dynamic json);
  String getEndpointAndPathForUserFollowing();
}

class ArtistShortClientHelper implements ClientHelper<ArtistShort> {
  @override
  ArtistShort deserialize(json) {
    return ArtistShort.fromJson(json);
  }

  @override
  String getEndpoint() {
    return FollowableType.ARTIST.path;
  }

  @override
  String getEndpointAndPathForUserFollowing() {
    return '${FollowableType.USER.path}/myFollowing/${FollowableType.ARTIST.path}';
  }
}

class ArtistFullClientHelper implements ClientHelper<ArtistFull> {
  @override
  ArtistFull deserialize(json) {
    return ArtistFull.fromJson(json);
  }

  @override
  String getEndpoint() {
    return FollowableType.ARTIST.path;
  }

  @override
  String getEndpointAndPathForUserFollowing() {
    return '${FollowableType.USER.path}/myFollowing/${FollowableType.ARTIST.path}';
  }
}

class EventShortClientHelper implements ClientHelper<EventShort> {
  @override
  EventShort deserialize(json) {
    return EventShort.fromJson(json);
  }

  @override
  String getEndpoint() {
    return FollowableType.EVENT.path;
  }

  @override
  String getEndpointAndPathForUserFollowing() {
    return '${FollowableType.USER.path}/myFollowing/${FollowableType.EVENT.path}';
  }
}

class EventFullClientHelper implements ClientHelper<EventFull> {
  @override
  EventFull deserialize(json) {
    return EventFull.fromJson(json);
  }

  @override
  String getEndpoint() {
    return FollowableType.EVENT.path;
  }

  @override
  String getEndpointAndPathForUserFollowing() {
    return '${FollowableType.USER.path}/myFollowing/${FollowableType.EVENT.path}';
  }
}

class UnityShortClientHelper implements ClientHelper<UnityShort> {
  @override
  UnityShort deserialize(json) {
    return UnityShort.fromJson(json);
  }

  @override
  String getEndpoint() {
    return FollowableType.UNITY.path;
  }

  @override
  String getEndpointAndPathForUserFollowing() {
    return '${FollowableType.USER.path}/myFollowing/${FollowableType.UNITY.path}';
  }
}

class UnityFullClientHelper implements ClientHelper<UnityFull> {
  @override
  UnityFull deserialize(json) {
    return UnityFull.fromJson(json);
  }

  @override
  String getEndpoint() {
    return FollowableType.UNITY.path;
  }

  @override
  String getEndpointAndPathForUserFollowing() {
    return '${FollowableType.USER.path}/myFollowing/${FollowableType.UNITY.path}';
  }
}

class PlaceShortClientHelper implements ClientHelper<PlaceShort> {
  @override
  PlaceShort deserialize(json) {
    return PlaceShort.fromJson(json);
  }

  @override
  String getEndpoint() {
    return FollowableType.PLACE.path;
  }

  @override
  String getEndpointAndPathForUserFollowing() {
    return '${FollowableType.USER.path}/myFollowing/${FollowableType.PLACE.path}';
  }
}

class PlaceFullClientHelper implements ClientHelper<PlaceFull> {
  @override
  PlaceFull deserialize(json) {
    return PlaceFull.fromJson(json);
  }

  @override
  String getEndpoint() {
    return FollowableType.PLACE.path;
  }

  @override
  String getEndpointAndPathForUserFollowing() {
    return '${FollowableType.USER.path}/myFollowing/${FollowableType.PLACE.path}';
  }
}

class CountryClientHelper implements ClientHelper<Country> {
  @override
  String getEndpoint() {
    return 'country';
  }

  @override
  Country deserialize(dynamic json) {
    return Country.fromJson(json);
  }

  @override
  String getEndpointAndPathForUserFollowing() {
    throw UnimplementedError();
  }
}

class CountryWriteClientHelper implements ClientHelper<CountryWrite> {
  @override
  String getEndpoint() {
    return 'country';
  }

  @override
  CountryWrite deserialize(dynamic json) {
    return CountryWrite.fromJson(json);
  }

  @override
  String getEndpointAndPathForUserFollowing() {
    throw UnimplementedError();
  }
}

class CityClientHelper implements ClientHelper<City> {
  @override
  String getEndpoint() {
    return 'city';
  }

  @override
  City deserialize(dynamic json) {
    return City.fromJson(json);
  }

  @override
  String getEndpointAndPathForUserFollowing() {
    throw UnimplementedError();
  }
}

class CityWriteClientHelper implements ClientHelper<CityWrite> {
  @override
  String getEndpoint() {
    return 'city';
  }

  @override
  CityWrite deserialize(dynamic json) {
    return CityWrite.fromJson(json);
  }

  @override
  String getEndpointAndPathForUserFollowing() {
    throw UnimplementedError();
  }
}

class MoneyCurrencyClientHelper implements ClientHelper<MoneyCurrency> {
  @override
  MoneyCurrency deserialize(json) {
    return MoneyCurrency.fromJson(json);
  }

  @override
  String getEndpoint() {
    return 'moneyCurrency';
  }

  @override
  String getEndpointAndPathForUserFollowing() {
    throw UnimplementedError();
  }
}

class SceneClientHelper implements ClientHelper<Scene> {
  @override
  Scene deserialize(json) {
    return Scene.fromJson(json);
  }

  @override
  String getEndpoint() {
    return 'scene';
  }

  @override
  String getEndpointAndPathForUserFollowing() {
    throw UnimplementedError();
  }
}
