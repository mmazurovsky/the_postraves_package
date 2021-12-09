import 'package:the_postraves_package/client/client_helper.dart';
import 'package:the_postraves_package/client/http_method_enum.dart';
import 'package:the_postraves_package/client/localized_request.dart';
import 'package:the_postraves_package/client/remote_request.dart';
import 'package:the_postraves_package/constants/server_constants.dart';

abstract class GeneralRemoteDataSource<DATA> {
  Future<List<DATA>> fetchAll(
      {required Map<String, String> httpHeaders,
      required bool isEndpointPublic});
  Future<List<DATA>> searchByName(
      {required String searchValue, required Map<String, String> httpHeaders});
  Future<List<DATA>> fetchCustomList(
      {required String path,
      Map<String, dynamic>? queryParameters,
      required Map<String, String> httpHeaders});
  Future<DATA> fetchCustomSingle(
      {required String path,
      Map<String, dynamic>? queryParameters,
      required Map<String, String> httpHeaders});
}

class GeneralRemoteDataSourceImpl<DATA>
    implements GeneralRemoteDataSource<DATA> {
  final LocalizedGetRequest _localizedGetRequest;
  final ClientHelper<DATA> _clientHelper;
  final RemoteRequest _remoteRequest;
  final ServerConstantsAbstract _serverConstantsAbstract;

  GeneralRemoteDataSourceImpl(
    this._localizedGetRequest,
    this._remoteRequest,
    this._clientHelper,
    this._serverConstantsAbstract,
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

  @override
  Future<List<DATA>> fetchCustomList(
      {required String path,
      Map<String, dynamic>? queryParameters,
      required Map<String, String> httpHeaders}) async {
    final request = _remoteRequest(
      httpMethod: HttpMethod.get,
      isHttps: _serverConstantsAbstract.isHttps,
      host: _serverConstantsAbstract.apiHost,
      hostPath: _serverConstantsAbstract.apiPath,
      endpointWithPath: '${_clientHelper.getEndpoint()}/$path',
      queryParameters: queryParameters,
      httpHeaders: httpHeaders,
    );

    final response = await request as List<dynamic>?;
    final decodedEvents =
        response?.map((json) => _clientHelper.deserialize(json)).toList() ?? [];
    return decodedEvents;
  }

  @override
  Future<DATA> fetchCustomSingle(
      {required String path,
      Map<String, dynamic>? queryParameters,
      required Map<String, String> httpHeaders}) async {
    final request = _remoteRequest(
      httpMethod: HttpMethod.get,
      isHttps: _serverConstantsAbstract.isHttps,
      host: _serverConstantsAbstract.apiHost,
      hostPath: _serverConstantsAbstract.apiPath,
      endpointWithPath: '${_clientHelper.getEndpoint()}/$path',
      queryParameters: queryParameters,
      httpHeaders: httpHeaders,
    );

    final json = await request;
    return _clientHelper.deserialize(json);
  }
}
