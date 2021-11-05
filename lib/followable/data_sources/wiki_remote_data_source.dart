import 'package:the_postraves_package/client/followable_client_helper.dart';
import 'package:the_postraves_package/client/http_method_enum.dart';
import 'package:the_postraves_package/client/localized_request.dart';
import 'package:the_postraves_package/client/remote_request.dart';
import 'package:the_postraves_package/constants/server_constants.dart';
import 'package:the_postraves_package/models/interfaces/data_interfaces.dart';

abstract class WikiRemoteDataSource<
    FULLFOLLOWABLE extends GeneralFollowableInterface> {
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
}

class WikiRemoteDataSourceImpl<
        FULLFOLLOWABLE extends GeneralFollowableInterface>
    implements WikiRemoteDataSource<FULLFOLLOWABLE> {
  final RemoteRequest _remoteRequest;
  final FollowableClientHelper<FULLFOLLOWABLE> _followableClientHelper;
  final LocalizedGetRequest _localizedGetRequest;

  WikiRemoteDataSourceImpl(
    this._remoteRequest,
    this._followableClientHelper,
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
