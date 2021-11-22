import 'package:the_postraves_package/client/client_helper.dart';
import 'package:the_postraves_package/client/http_method_enum.dart';
import 'package:the_postraves_package/client/localized_request.dart';
import 'package:the_postraves_package/client/remote_request.dart';
import 'package:the_postraves_package/constants/server_constants.dart';
import 'package:the_postraves_package/models/interfaces/data_interfaces.dart';

abstract class FollowableRemoteDataSource<
    FULLFOLLOWABLE extends GeneralFollowableInterface,
    SHORTFOLLOWABLE extends GeneralFollowableInterface> {
  Future<FULLFOLLOWABLE> fetchBasicDataById({
    required int id,
    required Map<String, String> httpHeaders,
  });

  Future<void> followFollowable({
    required int id,
    required Map<String, String> httpHeaders,
  });
  Future<void> unfollowFollowable({
    required int id,
    required Map<String, String> httpHeaders,
  });
  Future<List<SHORTFOLLOWABLE>> fetchAll({
    required Map<String, String> httpHeaders,
  });
  Future<List<SHORTFOLLOWABLE>> searchByName(
      {required String searchValue, required Map<String, String> httpHeaders});
}

class FollowableRemoteDataSourceImpl<
        FULLFOLLOWABLE extends GeneralFollowableInterface,
        SHORTFOLLOWABLE extends GeneralFollowableInterface>
    implements FollowableRemoteDataSource<FULLFOLLOWABLE, SHORTFOLLOWABLE> {
  final RemoteRequest _remoteRequest;
  final ClientHelper<FULLFOLLOWABLE> _followableClientHelperFull;
  final ClientHelper<SHORTFOLLOWABLE> _followableClientHelperShort;
  final LocalizedGetRequest _localizedGetRequest;
  final ServerConstantsAbstract _serverConstantsAbstract;

  FollowableRemoteDataSourceImpl(
    this._remoteRequest,
    this._followableClientHelperFull,
    this._followableClientHelperShort,
    this._localizedGetRequest,
    this._serverConstantsAbstract,
  );

  @override
  Future<FULLFOLLOWABLE> fetchBasicDataById({
    required int id,
    required Map<String, String> httpHeaders,
  }) async {
    final decodedResponse = await _localizedGetRequest(
      endpointWithPath:
          _followableClientHelperFull.getEndpoint() + '/public/$id',
      httpHeaders: httpHeaders,
    );
    return _followableClientHelperFull.deserialize(decodedResponse);
  }

  @override
  Future<List<SHORTFOLLOWABLE>> fetchAll(
      {required Map<String, String> httpHeaders}) async {
    final response = await _remoteRequest(
      isHttps: _serverConstantsAbstract.isHttps,
      httpMethod: HttpMethod.get,
      host: _serverConstantsAbstract.apiHost,
      hostPath: _serverConstantsAbstract.apiPath,
      endpointWithPath: _followableClientHelperShort.getEndpoint(),
      httpHeaders: httpHeaders,
    );

    return response
        .map<SHORTFOLLOWABLE>(
            (json) => _followableClientHelperShort.deserialize(json))
        .toList();
  }

  @override
  Future<List<SHORTFOLLOWABLE>> searchByName(
      {required String searchValue,
      required Map<String, String> httpHeaders}) async {
    final request = _localizedGetRequest(
      endpointWithPath:
          '${_followableClientHelperShort.getEndpoint()}/public/search/$searchValue',
      httpHeaders: httpHeaders,
    );

    final response = await request as List<dynamic>?;
    final decoded = response
            ?.map((json) => _followableClientHelperShort.deserialize(json))
            .toList() ??
        [];
    return decoded;
  }

  @override
  Future<void> followFollowable({
    required int id,
    required Map<String, String> httpHeaders,
  }) async {
    await _remoteRequest(
        isHttps: _serverConstantsAbstract.isHttps,
        httpMethod: HttpMethod.post,
        host: _serverConstantsAbstract.apiHost,
        hostPath: _serverConstantsAbstract.apiPath,
        endpointWithPath:
            _followableClientHelperFull.getEndpointAndPathForUserFollowing() +
                '/$id',
        httpHeaders: httpHeaders);
    return; //TODO: better have something in return to ensure everything is ok
  }

  @override
  Future<void> unfollowFollowable(
      {required int id, required Map<String, String> httpHeaders}) async {
    await _remoteRequest(
        isHttps: _serverConstantsAbstract.isHttps,
        httpMethod: HttpMethod.delete,
        host: _serverConstantsAbstract.apiHost,
        hostPath: _serverConstantsAbstract.apiPath,
        endpointWithPath:
            _followableClientHelperFull.getEndpointAndPathForUserFollowing() +
                '/$id',
        httpHeaders: httpHeaders);
    return; //TODO: better have something in return to ensure everything is ok
  }
}
