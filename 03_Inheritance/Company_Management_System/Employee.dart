// Base class
class Employee {
  String name;
  int id;
  double salary;

  Employee({required this.name, required this.id, required this.salary}) {
    print('Employee constructor called');
  }

  void displayInfo() {
    print('Name: $name');
    print('ID: $id');
    print('Salary: $salary');
  }

  void work() {
    print('Employee is working');
  }
}
