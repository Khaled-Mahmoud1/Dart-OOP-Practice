import 'Employee.dart';

class Intern extends Employee {
  int duration; // months

  Intern({
    required String name,
    required int id,
    required double salary,
    required this.duration,
  }) : super(name: name, id: id, salary: salary) {
    print('Intern constructor called');
  }

  @override
  void work() {
    print('$name is training for $duration months');
  }
}
