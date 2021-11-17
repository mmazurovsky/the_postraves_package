import 'package:the_postraves_package/client/request_wrapper.dart';
import 'package:the_postraves_package/client/response_sealed.dart';
import 'package:the_postraves_package/models/interfaces/data_interfaces.dart';

import '../data_sources/followable_remote_data_source.dart';

abstract class FollowableRepository<
    FULLFOLLOWABLE extends GeneralFollowableInterface,
    SHORTFOLLOWABLE extends GeneralFollowableInterface> {
  Future<ResponseSealed<FULLFOLLOWABLE>> fetchBasicDataById(int id);
  Future<ResponseSealed<List<SHORTFOLLOWABLE>>> fetchAll();
  Future<ResponseSealed<void>> followFollowable(int id);
  Future<ResponseSealed<void>> unfollowFollowable(int id);
}

class FollowableRepositoryImpl<
        FULLFOLLOWABLE extends GeneralFollowableInterface,
        SHORTFOLLOWABLE extends GeneralFollowableInterface>
    extends FollowableRepository<FULLFOLLOWABLE, SHORTFOLLOWABLE> {
  final FollowableRemoteDataSource<FULLFOLLOWABLE, SHORTFOLLOWABLE>
      _followableRemoteDataSource;
  final RemoteRequestWrapper<FULLFOLLOWABLE> _remoteRequestWrapper;
  final RemoteRequestWrapper<List<SHORTFOLLOWABLE>> _remoteRequestWrapperShorts;
  final RemoteRequestWrapper<void> _remoteRequestWrapperVoid;

  FollowableRepositoryImpl(
    this._followableRemoteDataSource,
    this._remoteRequestWrapper,
    this._remoteRequestWrapperShorts,
    this._remoteRequestWrapperVoid,
  );

  @override
  Future<ResponseSealed<FULLFOLLOWABLE>> fetchBasicDataById(int id) async {
    return await _remoteRequestWrapper(
        (httpHeaders) => _followableRemoteDataSource.fetchBasicDataById(
              id: id,
              httpHeaders: httpHeaders,
            ));
  }

  @override
  Future<ResponseSealed<void>> followFollowable(int id) async {
    return await _remoteRequestWrapperVoid(
        (httpHeaders) => _followableRemoteDataSource.followFollowable(
              id: id,
              httpHeaders: httpHeaders,
            ));
  }

  @override
  Future<ResponseSealed<void>> unfollowFollowable(int id) async {
    return await _remoteRequestWrapperVoid(
        (httpHeaders) => _followableRemoteDataSource.unfollowFollowable(
              id: id,
              httpHeaders: httpHeaders,
            ));
  }

  @override
  Future<ResponseSealed<List<SHORTFOLLOWABLE>>> fetchAll() async {
    return await _remoteRequestWrapperShorts((httpHeaders) =>
        _followableRemoteDataSource.fetchAll(httpHeaders: httpHeaders));
  }
}
