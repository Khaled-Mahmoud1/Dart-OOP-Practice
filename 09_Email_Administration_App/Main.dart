import 'Employee.dart';

import 'dart:io';

void main() {
  List<Employee> employees = [];

  while (true) {
    print("\n===== Email Administration App =====");
    print("1. Add Employee");
    print("2. Show All Employees");
    print("3. Change Password");
    print("4. Set Alternate Email");
    print("5. Exit");
    print("Choose option:");

    String? choice = stdin.readLineSync();

    switch (choice) {
      case "1":
        print("First Name:");
        String f = stdin.readLineSync()!;

        print("Last Name:");
        String l = stdin.readLineSync()!;

        print("Department:");
        String d = stdin.readLineSync()!;

        employees.add(Employee(f, l, d));
        print("Employee Added");
        break;

      case "2":
        if (employees.isEmpty) {
          print("No Employees Yet");
        } else {
          for (var emp in employees) {
            emp.showInfo();
          }
        }
        break;

      case "3":
        print("Enter employee index:");
        int index = int.parse(stdin.readLineSync()!);

        if (index >= 0 && index < employees.length) {
          print("New Password:");
          String pass = stdin.readLineSync()!;
          employees[index].changePassword(pass);
          print("Password Changed");
        } else {
          print("Invalid index");
        }
        break;

      case "4":
        print("Enter employee index:");
        int index = int.parse(stdin.readLineSync()!);

        if (index >= 0 && index < employees.length) {
          print("Alternate Email:");
          String alt = stdin.readLineSync()!;
          employees[index].setAlternateEmail(alt);
          print("Alternate Email Set");
        } else {
          print("Invalid index");
        }
        break;

      case "5":
        print("Goodbye...");
        return;

      default:
        print("Invalid Choice");
    }
  }
}
