import 'package:the_postraves_package/client/http_method_enum.dart';
import 'package:the_postraves_package/client/remote_request.dart';
import 'package:the_postraves_package/client/write_client_helper.dart';
import 'package:the_postraves_package/constants/server_constants.dart';
import 'package:the_postraves_package/models/interfaces/data_interfaces.dart';

abstract class WriteRemoteDataSource<WRITEDATA extends WriteInterface> {
  Future<void> saveOne({
    required WRITEDATA writeData,
    required Map<String, String> httpHeaders,
  });
  Future<void> updateOne({
    required WRITEDATA writeData,
    required Map<String, String> httpHeaders,
  });
}

class WriteRemoteDataSourceImpl<WRITEDATA extends WriteInterface>
    implements WriteRemoteDataSource<WRITEDATA> {
  final RemoteRequest _remoteRequest;
  final WriteClientHelper _writeClientHelper;

  WriteRemoteDataSourceImpl(
    this._remoteRequest,
    this._writeClientHelper,
  );

  @override
  Future<void> saveOne(
      {required WRITEDATA writeData,
      required Map<String, String> httpHeaders}) async {
    final body = writeData.toJson();
    await _remoteRequest(
      httpMethod: HttpMethod.post,
      host: ServerConstants.apiHost,
      hostPath: ServerConstants.apiPath,
      endpointWithPath: _writeClientHelper.getEndpoint(),
      httpHeaders: httpHeaders,
      body: body,
    );
    return;
  }

  @override
  Future<void> updateOne(
      {required WRITEDATA writeData,
      required Map<String, String> httpHeaders}) async {
    await _remoteRequest(
      httpMethod: HttpMethod.put,
      host: ServerConstants.apiHost,
      hostPath: ServerConstants.apiPath,
      endpointWithPath: _writeClientHelper.getEndpoint(),
      httpHeaders: httpHeaders,
      body: writeData,
    );
    return;
  }
}
