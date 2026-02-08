import 'user.dart';

void main() {
  User user = User();
  user.name = "Khaled";
  user.email = "khaled@example.com";
  user.balance = 5000.0;

  print(user.name);
  print(user.email);
  print('Initial balance: ${user.balance}');
  user.deposit(1000.0);
  print('After deposit: ${user.balance}');
  user.withdraw(2000.0);
  print('After withdrawal: ${user.balance}');

  // use toString method to print user details
  print('== User Details ==');
  print(user.toString());
}
