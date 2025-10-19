class Logger {
  static bool isProduction = false;

  static void log(String message) {
    if (!isProduction) {
      print(message);
    }
  }

  static void setProduction(bool isProd) {
    isProduction = isProd;
  }
}
