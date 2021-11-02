abstract class Failure {
  const Failure(String? exceptionMessage, [String? customMessage]);
}

class ServerFailure extends Failure {
  ServerFailure(String? message, [String? customMessage])
      : super(message, customMessage);
}

class CacheFailure extends Failure {
  CacheFailure(String? message, [String? customMessage])
      : super(message, customMessage);
}

class DeviceNetworkFailure extends Failure {
  DeviceNetworkFailure(String? message, [String? customMessage])
      : super(message, customMessage);
}

class AuthenticationFailure extends Failure {
  AuthenticationFailure(String? message, [String? customMessage])
      : super(message, customMessage);
}
