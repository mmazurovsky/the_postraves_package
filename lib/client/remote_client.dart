import 'dart:convert';
import 'dart:developer';
import '../errors/exceptions.dart';
import 'package:http/http.dart' as http_client;

import 'http_method_enum.dart';

class RemoteClient {
  static Future<dynamic> makeGetRequestAndReturnResponse(
      {required String host,
      String? hostPath,
      required String endpointWithPath,
      required Map<String, String> httpHeaders,
      Map<String, dynamic>? queryParameters}) async {
    final httpRequest = _MyHttpRequest(
      host: host,
      hostPath: hostPath,
      httpMethod: HttpMethod.get,
      endpointWithPath: endpointWithPath,
      queryParameters: queryParameters,
      httpHeaders: httpHeaders,
    );

    return httpRequest();
  }

  static Future<dynamic> makePostRequestAndReturnResponse(
      {required String host,
      String? hostPath,
      required String endpointWithPath,
      required Map<String, String> httpHeaders,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? body}) async {
    final httpRequest = _MyHttpRequest(
      host: host,
      hostPath: hostPath,
      httpMethod: HttpMethod.post,
      endpointWithPath: endpointWithPath,
      httpHeaders: httpHeaders,
      queryParameters: queryParameters,
      body: body,
    );

    return httpRequest();
  }

  static Future<dynamic> makePutRequestAndReturnResponse(
      {required String host,
      String? hostPath,
      required String endpointWithPath,
      required Map<String, String> httpHeaders,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? body}) async {
    final httpRequest = _MyHttpRequest(
      host: host,
      hostPath: hostPath,
      httpMethod: HttpMethod.put,
      endpointWithPath: endpointWithPath,
      httpHeaders: httpHeaders,
      queryParameters: queryParameters,
      body: body,
    );

    return httpRequest();
  }

  static Future<dynamic> makeDeleteRequestAndReturnResponse(
      {required String host,
      String? hostPath,
      required String endpointWithPath,
      required Map<String, String> httpHeaders,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? body}) async {
    final httpRequest = _MyHttpRequest(
      host: host,
      hostPath: hostPath,
      httpMethod: HttpMethod.delete,
      endpointWithPath: endpointWithPath,
      httpHeaders: httpHeaders,
      queryParameters: queryParameters,
      body: body,
    );

    return httpRequest();
  }
}

class _MyHttpRequest {
  final String host;
  final String? hostPath;
  final String endpointWithPath;
  final HttpMethod httpMethod;
  final Map<String, String> httpHeaders;
  final Map<String, dynamic>? queryParameters;
  final Map<String, dynamic>? body;
  late Uri uri;

  _MyHttpRequest({
    required this.host,
    this.hostPath,
    required this.endpointWithPath,
    required this.httpHeaders,
    required this.httpMethod,
    this.queryParameters,
    this.body,
  }) {
    uri = _createUri(host, hostPath);
  }

  dynamic call() async {
    _logRequest();

    final response = await _makeRequest();

    _checkResponse(response);

    final responseAsJson = _decodeResponseToJson(response);
    return responseAsJson;
  }

  Uri _createUri(String host, String? hostPath) {
    final fullPath =
        hostPath != null ? '$hostPath$endpointWithPath' : endpointWithPath;
    return Uri.https(host, fullPath, queryParameters);
  }

  void _logRequest() {
    log('${httpMethod.methodName} ${uri.toString()}');
    // log(httpHeaders[HttpHeaders.authorizationHeader].toString());
  }

  Future<http_client.Response> _makeRequest() {
    return httpMethod.methodFunction(
      url: uri,
      headers: httpHeaders,
      body: jsonEncode(body),
    );
  }

  dynamic _decodeResponseToJson(http_client.Response response) {
    return response.body.isNotEmpty
        ? json.decode(utf8.decode(response.bodyBytes))
        : null;
  }

  void _checkResponse(http_client.Response response) {
    if (response.statusCode.toString()[0] == '4' ||
        response.statusCode.toString()[0] == '5') {
      final exceptionMessage =
          'Status code is: ${response.statusCode}, body: ${response.body}';
      log(exceptionMessage);
      throw MyServerException(); //TODO Exception
    }
  }
}
