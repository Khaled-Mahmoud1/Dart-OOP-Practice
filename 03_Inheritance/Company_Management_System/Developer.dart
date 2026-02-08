import 'Employee.dart';

class Developer extends Employee {
  String language;

  Developer({
    required String name,
    required int id,
    required double salary,
    required this.language,
  }) : super(name: name, id: id, salary: salary) {
    print('Developer constructor called');
  }

  @override
  void work() {
    print('$name is coding using $language');
  }
}
