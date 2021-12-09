import 'package:the_postraves_package/client/request_wrapper.dart';
import 'package:the_postraves_package/client/response_sealed.dart';
import 'package:the_postraves_package/followable/data_sources/general_remote_data_source.dart';

abstract class GeneralRepository<DATA> {
  Future<ResponseSealed<List<DATA>>> fetchAllFromRemote(
      {bool isEndpointPublic = true});
  Future<ResponseSealed<List<DATA>>> searchByName(String searchValue);
  Future<ResponseSealed<List<DATA>>> fetchCustomList({
    required String path,
    Map<String, dynamic>? queryParameters,
  });
  Future<ResponseSealed<DATA>> fetchCustomSingle({
    required String path,
    Map<String, dynamic>? queryParameters,
  });
}

class GeneralRepositoryImpl<DATA> implements GeneralRepository<DATA> {
  final GeneralRemoteDataSource<DATA> _generalRemoteDataSource;
  final RemoteRequestWrapper<List<DATA>> _remoteRequestWrapperList;
  final RemoteRequestWrapper<DATA> _remoteRequestWrapperSingle;

  GeneralRepositoryImpl(
    this._generalRemoteDataSource,
    this._remoteRequestWrapperList,
    this._remoteRequestWrapperSingle,
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

  @override
  Future<ResponseSealed<List<DATA>>> fetchCustomList(
      {required String path, Map<String, dynamic>? queryParameters}) {
    return _remoteRequestWrapperList(
      (httpHeaders) => _generalRemoteDataSource.fetchCustomList(
          path: path,
          httpHeaders: httpHeaders,
          queryParameters: queryParameters),
    );
  }

  @override
  Future<ResponseSealed<DATA>> fetchCustomSingle(
      {required String path, Map<String, dynamic>? queryParameters}) {
    return _remoteRequestWrapperSingle(
      (httpHeaders) => _generalRemoteDataSource.fetchCustomSingle(
          path: path,
          httpHeaders: httpHeaders,
          queryParameters: queryParameters),
    );
  }
}
