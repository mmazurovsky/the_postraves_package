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
      wikiRemoteDataSource;
  final RemoteRequestWrapper<FULLFOLLOWABLE> remoteRequestWrapper;
  final RemoteRequestWrapper<List<SHORTFOLLOWABLE>> remoteRequestWrapperShorts;
  final RemoteRequestWrapper<void> remoteRequestWrapperVoid;

  FollowableRepositoryImpl({
    required this.wikiRemoteDataSource,
    required this.remoteRequestWrapper,
    required this.remoteRequestWrapperShorts,
    required this.remoteRequestWrapperVoid,
  });

  @override
  Future<ResponseSealed<FULLFOLLOWABLE>> fetchBasicDataById(int id) async {
    return await remoteRequestWrapper(
        (httpHeaders) => wikiRemoteDataSource.fetchBasicDataById(
              id: id,
              httpHeaders: httpHeaders,
            ));
  }

  @override
  Future<ResponseSealed<void>> followFollowable(int id) async {
    return await remoteRequestWrapperVoid(
        (httpHeaders) => wikiRemoteDataSource.followFollowable(
              id: id,
              httpHeaders: httpHeaders,
            ));
  }

  @override
  Future<ResponseSealed<void>> unfollowFollowable(int id) async {
    return await remoteRequestWrapperVoid(
        (httpHeaders) => wikiRemoteDataSource.unfollowFollowable(
              id: id,
              httpHeaders: httpHeaders,
            ));
  }

  @override
  Future<ResponseSealed<List<SHORTFOLLOWABLE>>> fetchAll() async {
    return await remoteRequestWrapperShorts((httpHeaders) =>
        wikiRemoteDataSource.fetchAll(httpHeaders: httpHeaders));
  }
}
