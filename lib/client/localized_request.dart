abstract class LocalizedGetRequest {
  Future<dynamic> call({
    required String endpointWithPath,
    required Map<String, String> httpHeaders,
    Map<String, dynamic>? queryParameters,
  });
}
