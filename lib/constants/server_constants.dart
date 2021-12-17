abstract class ServerConstantsAbstract {
  bool get isHttps;
  String get apiHost;
  String? get apiPath;
  // String get corsAnywhereHost;
  ServerEnvironment get environment;
}

const corsAnywhereHost =
    'http://cors-anywhere.eu-central-1.elasticbeanstalk.com';

enum ServerEnvironment {
  dev,
  prod,
  local,
}

class ServerConstantsProduction implements ServerConstantsAbstract {
  @override
  bool get isHttps => true;
  @override
  String get apiHost => 'postraves.com';
  @override
  String? get apiPath => 'api/';
  @override
  ServerEnvironment get environment => ServerEnvironment.prod;
}

class ServerConstantsDevelopment implements ServerConstantsAbstract {
  @override
  bool get isHttps => true;
  @override
  String get apiHost => 'mdev.postraves.com';
  @override
  String? get apiPath => 'api/';
  @override
  ServerEnvironment get environment => ServerEnvironment.dev;
}

class ServerConstantsLocal implements ServerConstantsAbstract {
  @override
  bool get isHttps => false;
  @override
  String get apiHost => 'localhost:8080';
  @override
  String? get apiPath => null;
  @override
  ServerEnvironment get environment => ServerEnvironment.local;
}
