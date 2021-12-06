abstract class ServerConstantsAbstract {
  bool get isHttps;
  String get apiHost;
  String? get apiPath;
  String get corsAnywhereHost;
}

class ServerConstantsProduction implements ServerConstantsAbstract {
  @override
  bool get isHttps => true;
  @override
  String get apiHost => 'postraves.com';
  @override
  String get apiPath => 'api/';
  @override
  String get corsAnywhereHost =>
      'http://cors-anywhere.eu-central-1.elasticbeanstalk.com';
}

class ServerConstantsDevelopment implements ServerConstantsAbstract {
  @override
  bool get isHttps => true;
  @override
  String get apiHost => 'mdev.postraves.com';
  @override
  String get apiPath => 'api/';
  @override
  String get corsAnywhereHost =>
      'http://cors-anywhere.eu-central-1.elasticbeanstalk.com';
}

class ServerConstantsLocal implements ServerConstantsAbstract {
  @override
  bool get isHttps => false;
  @override
  String get apiHost => 'localhost:8080';
  @override
  String get apiPath => '/';
  @override
  String get corsAnywhereHost =>
      'http://cors-anywhere.eu-central-1.elasticbeanstalk.com';
}