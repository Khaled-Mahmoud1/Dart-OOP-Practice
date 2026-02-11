import 'Mixins.dart';

class UserService with Logger, Timestamp {
  void createUser(String name) {
    log("User $name created at ${getCurrentTime()}");
  }
}
