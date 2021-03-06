import 'package:the_postraves_package/client/client_helper.dart';
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
  final ClientHelper<SHORT> _clientHelper;
  final ServerConstantsAbstract _serverConstantsAbstract;

  WriteRemoteDataSourceImpl(
    this._remoteRequest,
    this._clientHelper,
    this._serverConstantsAbstract,
  );

  @override
  Future<SHORT> saveOne(
      {required WRITEDATA writeData,
      required Map<String, String> httpHeaders}) async {
    final response = await _remoteRequest(
      isHttps: _serverConstantsAbstract.isHttps,
      httpMethod: HttpMethod.post,
      host: _serverConstantsAbstract.apiHost,
      hostPath: _serverConstantsAbstract.apiPath,
      endpointWithPath: _clientHelper.getEndpoint(),
      httpHeaders: httpHeaders,
      body: writeData.toJson(),
    );

    return _clientHelper.deserialize(response);
  }

  @override
  Future<void> updateOne(
      {required WRITEDATA writeData,
      required Map<String, String> httpHeaders}) async {
    await _remoteRequest(
      isHttps: _serverConstantsAbstract.isHttps,
      httpMethod: HttpMethod.put,
      host: _serverConstantsAbstract.apiHost,
      hostPath: _serverConstantsAbstract.apiPath,
      endpointWithPath: _clientHelper.getEndpoint(),
      httpHeaders: httpHeaders,
      body: writeData.toJson(),
    );
  }
}
