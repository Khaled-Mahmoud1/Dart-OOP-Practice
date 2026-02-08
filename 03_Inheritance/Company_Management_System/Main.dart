import 'Manager.dart';
import 'Developer.dart';
import 'Intern.dart';

void main() {
  Manager m = Manager(name: "Khaled", id: 101, salary: 15000, department: "IT");

  print('======================');

  Developer d = Developer(
    name: "Ahmed",
    id: 102,
    salary: 12000,
    language: "Flutter",
  );

  print('=======================');

  Intern i = Intern(name: "Omar", id: 103, salary: 3000, duration: 6);

  print('========================');

  m.displayInfo();
  m.work();

  print('=======================');

  d.displayInfo();
  d.work();

  print('=========================');

  i.displayInfo();
  i.work();
}
