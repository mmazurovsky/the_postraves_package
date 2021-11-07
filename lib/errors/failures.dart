class Failure {
  const Failure(FailureType type, [String? customMessage]);
}

enum FailureType {
  deviceNetworkFailure,
  serverFailure,
  cacheFailure,
  authFailure,
}
