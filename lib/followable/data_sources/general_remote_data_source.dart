import 'package:the_postraves_package/client/client_helper.dart';
import 'package:the_postraves_package/client/localized_request.dart';

abstract class GeneralRemoteDataSource<DATA> {
  Future<List<DATA>> fetchAll(
      {required Map<String, String> httpHeaders,
      required bool isEndpointPublic});
  Future<List<DATA>> searchByName(
      {required String searchValue, required Map<String, String> httpHeaders});
}

class GeneralRemoteDataSourceImpl<DATA>
    implements GeneralRemoteDataSource<DATA> {
  final LocalizedGetRequest _localizedGetRequest;
  final ClientHelper<DATA> _clientHelper;

  GeneralRemoteDataSourceImpl(
    this._localizedGetRequest,
    this._clientHelper,
  );

  @override
  Future<List<DATA>> fetchAll(
      {required Map<String, String> httpHeaders,
      required bool isEndpointPublic}) async {
    final response = await _localizedGetRequest(
      endpointWithPath:
          '${_clientHelper.getEndpoint()}${isEndpointPublic ? '/public' : ''}/all',
      httpHeaders: httpHeaders,
    ) as List<dynamic>?;

    return response
            ?.map<DATA>((json) => _clientHelper.deserialize(json))
            .toList() ??
        [];
  }

  @override
  Future<List<DATA>> searchByName(
      {required String searchValue,
      required Map<String, String> httpHeaders}) async {
    final request = _localizedGetRequest(
      endpointWithPath:
          '${_clientHelper.getEndpoint()}/public/search/$searchValue',
      httpHeaders: httpHeaders,
    );

    final response = await request as List<dynamic>?;
    final decodedEvents =
        response?.map((json) => _clientHelper.deserialize(json)).toList() ?? [];
    return decodedEvents;
  }
}
