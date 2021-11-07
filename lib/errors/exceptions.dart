class MyServerException implements Exception {
  final String? message;
  MyServerException([this.message]);
}

class MyCacheException implements Exception {
  final String? message;
  MyCacheException([this.message]);
}

class MyOpenLinkException implements Exception {
  final String? message;
  MyOpenLinkException([this.message]);
}
