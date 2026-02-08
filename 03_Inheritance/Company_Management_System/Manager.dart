import 'Employee.dart';

class Manager extends Employee {
  String department;

  Manager({
    required String name,
    required int id,
    required double salary,
    required this.department,
  }) : super(name: name, id: id, salary: salary) {
    print('Manager constructor called');
  }

  @override
  void work() {
    print('$name is managing the $department department');
  }
}
