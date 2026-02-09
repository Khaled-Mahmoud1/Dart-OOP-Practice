// ignore_for_file: unused_local_variable

class User {
  // Static variable
  static int usersCount = 0;

  String name;

  User(this.name) {
    usersCount++;
  }
}

void main() {
  User u1 = User("Khaled");
  User u2 = User("Ahmed");
  User u3 = User("Mahmoud");

  print(User.usersCount); // 3
}
