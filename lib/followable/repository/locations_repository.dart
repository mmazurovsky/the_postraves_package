import 'package:the_postraves_package/client/request_wrapper.dart';
import 'package:the_postraves_package/client/response_sealed.dart';
import 'package:the_postraves_package/followable/data_sources/locations_remote_data_source.dart';
import 'package:the_postraves_package/models/geo/city.dart';
import 'package:the_postraves_package/models/geo/country.dart';

abstract class LocationsRepository {
  Future<ResponseSealed<List<City>>> fetchCitiesFromRemote();
  Future<ResponseSealed<List<Country>>> fetchCountriesFromRemote();
}

class LocationsRepositoryImpl implements LocationsRepository {
  final LocationsRemoteDataSource _locationsRemoteDataSource;
  final RemoteRequestWrapper<List<City>> _remoteRequestWrapperListCity;
  final RemoteRequestWrapper<List<Country>> _remoteRequestWrapperListCountry;

  LocationsRepositoryImpl(
    this._locationsRemoteDataSource,
    this._remoteRequestWrapperListCity,
    this._remoteRequestWrapperListCountry,
  );

  @override
  Future<ResponseSealed<List<City>>> fetchCitiesFromRemote() async {
    return await _remoteRequestWrapperListCity(
      (httpHeaders) => _locationsRemoteDataSource.fetchCities(
        httpHeaders: httpHeaders,
      ),
    );
  }

  @override
  Future<ResponseSealed<List<Country>>> fetchCountriesFromRemote() async {
    return await _remoteRequestWrapperListCountry(
      (httpHeaders) => _locationsRemoteDataSource.fetchCountries(
        httpHeaders: httpHeaders,
      ),
    );
  }
}
