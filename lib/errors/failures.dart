class Failure {
  final FailureType type;
  final String? customMessage;
  const Failure(this.type, [this.customMessage]);
}

enum FailureType {
  deviceNetworkFailure,
  serverFailure,
  cacheFailure,
  authFailure,
}
