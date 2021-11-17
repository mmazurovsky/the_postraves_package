import 'package:the_postraves_package/client/localized_request.dart';
import 'package:the_postraves_package/models/geo/city.dart';
import 'package:the_postraves_package/models/geo/country.dart';

abstract class LocationsRemoteDataSource {
  Future<List<City>> fetchCities({required Map<String, String> httpHeaders});
  Future<List<Country>> fetchCountries(
      {required Map<String, String> httpHeaders});
}

class LocationsRemoteDataSourceImpl implements LocationsRemoteDataSource {
  final LocalizedGetRequest _localizedGetRequest;

  LocationsRemoteDataSourceImpl(
    this._localizedGetRequest,
  );

  @override
  Future<List<City>> fetchCities(
      {required Map<String, String> httpHeaders}) async {
    final response = await _localizedGetRequest(
      endpointWithPath: 'city/public/all',
      httpHeaders: httpHeaders,
    ) as List<dynamic>?;

    return response?.map<City>((json) => City.fromJson(json)).toList() ?? [];
  }

  @override
  Future<List<Country>> fetchCountries(
      {required Map<String, String> httpHeaders}) async {
    final response = await _localizedGetRequest(
      endpointWithPath: 'country/public/all',
      httpHeaders: httpHeaders,
    ) as List<dynamic>?;

    return response?.map<Country>((json) => Country.fromJson(json)).toList() ??
        [];
  }
}
