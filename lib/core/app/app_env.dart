class Environment {
  static const String dev = 'dev';
  static const String prod = 'prod';
  static const String stage = 'stage';

  final String name;
  final String apiUrl;
  final bool enableLogging;

  Environment({
    required this.name,
    required this.apiUrl,
    required this.enableLogging,
  });

  factory Environment.fromString(String env) {
    switch (env) {
      case dev:
        return Environment(
          name: dev,
          apiUrl: 'http://127.0.0.1:8081/',
          enableLogging: true,
        );
      case prod:
        return Environment(
          name: prod,
          apiUrl: 'https://api.example.com',
          enableLogging: false,
        );
      case stage:
        return Environment(
          name: stage,
          apiUrl: 'https://stage-api.example.com',
          enableLogging: true,
        );
      default:
        throw Exception("Invalid environment: $env");
    }
  }
}
