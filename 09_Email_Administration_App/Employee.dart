import 'dart:math';

class Employee {
  String firstName;
  String lastName;
  String department;

  late String _email;
  late String _password;
  int mailboxCapacity = 500;
  String? alternateEmail;

  static const String companyDomain = "company.com";

  Employee(this.firstName, this.lastName, this.department) {
    _email = generateEmail();
    _password = generatePassword(10);
  }

  String generateEmail() {
    return "${firstName.toLowerCase()}.${lastName.toLowerCase()}.${department.toLowerCase()}@$companyDomain";
  }

  String generatePassword(int length) {
    const chars =
        "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#\$%^&*";
    Random random = Random();
    return List.generate(
      length,
      (index) => chars[random.nextInt(chars.length)],
    ).join();
  }

  void changePassword(String newPassword) {
    _password = newPassword;
    print("Password changed successfully");
  }

  void setMailboxCapacity(int capacity) {
    mailboxCapacity = capacity;
  }

  void setAlternateEmail(String altEmail) {
    alternateEmail = altEmail;
  }

  void showInfo() {
    print("\n===== Employee Info =====");
    print("Name : $firstName $lastName");
    print("Department : $department");
    print("Email : $_email");
    print("Password : $_password");
    print("Mailbox Capacity : $mailboxCapacity MB");
    print("Alternate Email : ${alternateEmail ?? "Not set"}");
    print("=========================");
  }
}
