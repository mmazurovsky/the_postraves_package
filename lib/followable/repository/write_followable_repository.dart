import 'package:the_postraves_package/client/request_wrapper.dart';
import 'package:the_postraves_package/client/response_sealed.dart';
import 'package:the_postraves_package/followable/data_sources/write_followable_data_source.dart';
import 'package:the_postraves_package/models/interfaces/data_interfaces.dart';

abstract class WriteFollowableRepository<WRITEDATA extends WriteInterface> {
  Future<ResponseSealed<void>> saveOne(WRITEDATA writeData);
  Future<ResponseSealed<void>> updateOne(WRITEDATA writeData);
}

class WriteFollowableRepositoryImpl<WRITEDATA extends WriteInterface>
    extends WriteFollowableRepository<WRITEDATA> {
  final WriteFollowableDataSource _writeFollowableDataSource;
  final RemoteRequestWrapper<void> _remoteRequestWrapperVoid;

  WriteFollowableRepositoryImpl(
    this._writeFollowableDataSource,
    this._remoteRequestWrapperVoid,
  );

  @override
  Future<ResponseSealed<void>> saveOne(WRITEDATA writeData) async {
    return await _remoteRequestWrapperVoid(
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
