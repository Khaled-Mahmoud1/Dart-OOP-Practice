class User {
  // _ indicates private variable
  // get .. set methods to access private variables

  String? _name;
  String? _email;
  double _balance = 0;

  User();

  String? get name => _name;
  String? get email => _email;
  double get balance => _balance;

  set name(String? name) => _name = name;
  set email(String? email) => _email = email;
  set balance(double balance) => _balance = balance;

  deposit(double amount) {
    _balance += amount;
  }

  withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
    } else {
      print("Insufficient balance");
    }
  }

  @override
  String toString() {
    return "User(name: $_name, email: $_email, balance: $_balance)";
  }

  // old way to access private variables using get .. set methods
  // setName(String name) {
  //   _name = name;
  // }

  // String? getName() {
  //   return _name;
  // }

  // setEmail(String email) {
  //   _email = email;
  // }

  // String? getEmail() {
  //   return _email;
  // }

  // setBalance(double balance) {
  //   _balance = balance;
  // }

  // double getBalance() {
  //   return _balance;
  // }
}
