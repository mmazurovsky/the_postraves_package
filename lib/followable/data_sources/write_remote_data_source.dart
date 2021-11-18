import 'package:the_postraves_package/client/followable_client_helper.dart';
import 'package:the_postraves_package/client/http_method_enum.dart';
import 'package:the_postraves_package/client/remote_request.dart';
import 'package:the_postraves_package/constants/server_constants.dart';
import 'package:the_postraves_package/models/interfaces/data_interfaces.dart';

abstract class WriteRemoteDataSource<WRITEDATA extends WriteInterface,
    SHORT extends ShortInterface> {
  Future<SHORT> saveOne({
    required WRITEDATA writeData,
    required Map<String, String> httpHeaders,
  });
  Future<void> updateOne({
    required WRITEDATA writeData,
    required Map<String, String> httpHeaders,
  });
}

class WriteRemoteDataSourceImpl<WRITEDATA extends WriteInterface,
        SHORT extends ShortInterface>
    implements WriteRemoteDataSource<WRITEDATA, SHORT> {
  final RemoteRequest _remoteRequest;
  final WriteClientHelper<WRITEDATA, SHORT> _writeClientHelper;

  WriteRemoteDataSourceImpl(
    this._remoteRequest,
    this._writeClientHelper,
  );

  @override
  Future<SHORT> saveOne(
      {required WRITEDATA writeData,
      required Map<String, String> httpHeaders}) async {
    final response = await _remoteRequest(
      httpMethod: HttpMethod.post,
      host: ServerConstants.apiHost,
      hostPath: ServerConstants.apiPath,
      endpointWithPath: _writeClientHelper.getEndpoint(),
      httpHeaders: httpHeaders,
      body: writeData.toJson(),
    );

    return _writeClientHelper.deserialize(response);
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
      body: writeData.toJson(),
    );
  }
}
