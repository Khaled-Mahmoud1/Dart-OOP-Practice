void main() {
  // Users user1 = Users();
  // Users user2 = Users.namedConstructorOne();

  Users user3 = Users.namedConstructorTwo('Khaled', 20);
  user3.printInfo();
}

class Users {
  String? name;
  int? age;

  Users() {
    print('default constructor');
  }

  Users.namedConstructorOne() {
    print('named constructor one');
  }
  Users.namedConstructorTwo(this.name, this.age);
  printInfo() {
    print("My name is $name and my age is $age");
  }
}
