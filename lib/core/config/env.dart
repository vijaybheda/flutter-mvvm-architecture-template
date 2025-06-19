enum Environment { dev, staging, prod }

class AppConfig {
  static late Environment _env;

  static void setEnvironment(Environment env) {
    _env = env;
  }

  static String get baseUrl {
    switch (_env) {
      case Environment.dev:
        return "http://192.168.1.32:8000";
      case Environment.staging:
        return "http://localhost:8000";
      case Environment.prod:
        return "http://localhost:8000";
    }
  }

  static Environment get current => _env;
}
