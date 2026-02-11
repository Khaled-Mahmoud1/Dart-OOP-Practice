mixin Logger {
  void log(String message) {
    print("LOG: $message");
  }
}

mixin Timestamp {
  String getCurrentTime() {
    return DateTime.now().toString();
  }
}
