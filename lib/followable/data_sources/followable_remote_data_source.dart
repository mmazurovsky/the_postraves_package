import 'package:the_postraves_package/client/followable_client_helper.dart';
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
}

class FollowableRemoteDataSourceImpl<
        FULLFOLLOWABLE extends GeneralFollowableInterface,
        SHORTFOLLOWABLE extends GeneralFollowableInterface>
    implements FollowableRemoteDataSource<FULLFOLLOWABLE, SHORTFOLLOWABLE> {
  final RemoteRequest _remoteRequest;
  final FollowableClientHelper<FULLFOLLOWABLE> _followableClientHelper;
  final FollowableClientHelper<SHORTFOLLOWABLE> _followableClientHelperShort;
  final LocalizedGetRequest _localizedGetRequest;

  FollowableRemoteDataSourceImpl(
    this._remoteRequest,
    this._followableClientHelper,
    this._followableClientHelperShort,
    this._localizedGetRequest,
  );

  @override
  Future<FULLFOLLOWABLE> fetchBasicDataById({
    required int id,
    required Map<String, String> httpHeaders,
  }) async {
    final decodedResponse = await _localizedGetRequest(
      endpointWithPath:
          _followableClientHelper.getEndpointForFollowable() + '/public/$id',
      httpHeaders: httpHeaders,
    );
    return _followableClientHelper.deserializeFollowable(decodedResponse);
  }

  @override
  Future<List<SHORTFOLLOWABLE>> fetchAll(
      {required Map<String, String> httpHeaders}) async {
    final response = await _remoteRequest(
      httpMethod: HttpMethod.get,
      host: ServerConstants.apiHost,
      hostPath: ServerConstants.apiPath,
      endpointWithPath: _followableClientHelperShort.getEndpointForFollowable(),
      httpHeaders: httpHeaders,
    );

    return response
        .map<SHORTFOLLOWABLE>(
            (json) => _followableClientHelperShort.deserializeFollowable(json))
        .toList();
  }

  @override
  Future<void> followFollowable({
    required int id,
    required Map<String, String> httpHeaders,
  }) async {
    await _remoteRequest(
        httpMethod: HttpMethod.post,
        host: ServerConstants.apiHost,
        hostPath: ServerConstants.apiPath,
        endpointWithPath:
            _followableClientHelper.getEndpointAndPathForUserFollowing() +
                '/$id',
        httpHeaders: httpHeaders);
    return; //TODO: better have something in return to ensure everything is ok
  }

  @override
  Future<void> unfollowFollowable(
      {required int id, required Map<String, String> httpHeaders}) async {
    await _remoteRequest(
        httpMethod: HttpMethod.delete,
        host: ServerConstants.apiHost,
        hostPath: ServerConstants.apiPath,
        endpointWithPath:
            _followableClientHelper.getEndpointAndPathForUserFollowing() +
                '/$id',
        httpHeaders: httpHeaders);
    return; //TODO: better have something in return to ensure everything is ok
  }
}
