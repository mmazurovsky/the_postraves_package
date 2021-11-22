import 'package:the_postraves_package/client/request_wrapper.dart';
import 'package:the_postraves_package/client/response_sealed.dart';
import 'package:the_postraves_package/followable/data_sources/general_remote_data_source.dart';

abstract class GeneralRepository<DATA> {
  Future<ResponseSealed<List<DATA>>> fetchAllFromRemote(
      {bool isEndpointPublic = true});
  Future<ResponseSealed<List<DATA>>> searchByName(String searchValue);
}

class GeneralRepositoryImpl<DATA> implements GeneralRepository<DATA> {
  final GeneralRemoteDataSource<DATA> _generalRemoteDataSource;
  final RemoteRequestWrapper<List<DATA>> _remoteRequestWrapperList;

  GeneralRepositoryImpl(
    this._generalRemoteDataSource,
    this._remoteRequestWrapperList,
  );

  @override
  Future<ResponseSealed<List<DATA>>> fetchAllFromRemote(
      {bool isEndpointPublic = true}) async {
    return await _remoteRequestWrapperList(
      (httpHeaders) => _generalRemoteDataSource.fetchAll(
          httpHeaders: httpHeaders, isEndpointPublic: isEndpointPublic),
    );
  }

  @override
  Future<ResponseSealed<List<DATA>>> searchByName(String searchValue) async {
    return await _remoteRequestWrapperList(
      (httpHeaders) => _generalRemoteDataSource.searchByName(
          searchValue: searchValue, httpHeaders: httpHeaders),
    );
  }
}
