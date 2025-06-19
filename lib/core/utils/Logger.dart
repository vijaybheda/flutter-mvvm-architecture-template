class Logger {
  Logger._internal();

  static final Logger _instance = Logger._internal();

  factory Logger() {
    return _instance;
  }

  static void log(dynamic message) {
    final timestamp = DateTime.now().toLocal();
    final formattedMessage = '[$timestamp] $message';
    print(formattedMessage);
  }

  static void error(dynamic message, [StackTrace? stackTrace]) {
    final timestamp = DateTime.now().toLocal();
    final formattedMessage = '[$timestamp] $message';
    print(formattedMessage);
    if (stackTrace != null) {
      print(stackTrace.toString());
    }
  }
}
