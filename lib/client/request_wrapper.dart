import 'package:the_postraves_package/client/response_sealed.dart';

abstract class RemoteRequestWrapper<T> {
  Future<ResponseSealed<T>> call(
      Future<T> Function(Map<String, String>) request);
}