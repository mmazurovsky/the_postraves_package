abstract class ServerConstantsAbstract {
  bool get isHttps;
  String get apiHost;
  String? get apiPath;
  String get corsAnywhereHost;
}

class ServerConstantsProd implements ServerConstantsAbstract {
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
