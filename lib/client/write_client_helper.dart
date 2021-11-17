import 'package:the_postraves_package/dto/followable_type.dart';
import 'package:the_postraves_package/models/interfaces/data_interfaces.dart';
import 'package:the_postraves_package/models/write/artist_write.dart';
import 'package:the_postraves_package/models/write/city_write.dart';
import 'package:the_postraves_package/models/write/country_write.dart';
import 'package:the_postraves_package/models/write/event_write.dart';
import 'package:the_postraves_package/models/write/place_write.dart';
import 'package:the_postraves_package/models/write/unity_write.dart';

abstract class WriteClientHelper<WRITEDATA extends WriteInterface> {
  String getEndpoint();
}

class ArtistWriteClientHelper implements WriteClientHelper<ArtistWrite> {
  @override
  String getEndpoint() {
    return FollowableType.ARTIST.endpoint;
  }
}

class EventWriteClientHelper implements WriteClientHelper<EventWrite> {
  @override
  String getEndpoint() {
    return FollowableType.EVENT.endpoint;
  }
}

class PlaceWriteClientHelper implements WriteClientHelper<PlaceWrite> {
  @override
  String getEndpoint() {
    return FollowableType.PLACE.endpoint;
  }
}

class UnityWriteClientHelper implements WriteClientHelper<UnityWrite> {
  @override
  String getEndpoint() {
    return FollowableType.UNITY.endpoint;
  }
}

class CountryWriteClientHelper implements WriteClientHelper<CountryWrite> {
  @override
  String getEndpoint() {
    return 'country';
  }
}

class CityWriteClientHelper implements WriteClientHelper<CityWrite> {
  @override
  String getEndpoint() {
    return 'city';
  }
}
