import 'Employee.dart';

void main() {
  Employee emp = Employee("Khaled", "Mahmoud", "Development");

  emp.showInfo();

  emp.setMailboxCapacity(1000);
  emp.setAlternateEmail("khaled.personal@gmail.com");
  emp.changePassword("NewPass123!");

  emp.showInfo();
}
