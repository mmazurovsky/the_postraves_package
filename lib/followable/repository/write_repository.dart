import 'package:the_postraves_package/client/request_wrapper.dart';
import 'package:the_postraves_package/client/response_sealed.dart';
import 'package:the_postraves_package/followable/data_sources/write_remote_data_source.dart';
import 'package:the_postraves_package/models/interfaces/data_interfaces.dart';

abstract class WriteRepository<WRITEDATA extends WriteInterface,
    SHORT extends ShortInterface> {
  Future<ResponseSealed<SHORT>> saveOne(WRITEDATA writeData);
  Future<ResponseSealed<void>> updateOne(WRITEDATA writeData);
}

class WriteRepositoryImpl<WRITEDATA extends WriteInterface,
    SHORT extends ShortInterface> extends WriteRepository<WRITEDATA, SHORT> {
  final WriteRemoteDataSource<WRITEDATA, SHORT> _writeFollowableDataSource;
  final RemoteRequestWrapper<SHORT> _remoteRequestWrapperShort;
  final RemoteRequestWrapper<void> _remoteRequestWrapperVoid;

  WriteRepositoryImpl(
    this._writeFollowableDataSource,
    this._remoteRequestWrapperShort,
    this._remoteRequestWrapperVoid,
  );

  @override
  Future<ResponseSealed<SHORT>> saveOne(WRITEDATA writeData) async {
    return await _remoteRequestWrapperShort(
      (httpHeaders) => _writeFollowableDataSource.saveOne(
        writeData: writeData,
        httpHeaders: httpHeaders,
      ),
    );
  }

  @override
  Future<ResponseSealed<void>> updateOne(WRITEDATA writeData) async {
    return await _remoteRequestWrapperVoid(
      (httpHeaders) => _writeFollowableDataSource.updateOne(
        writeData: writeData,
        httpHeaders: httpHeaders,
      ),
    );
  }
}
