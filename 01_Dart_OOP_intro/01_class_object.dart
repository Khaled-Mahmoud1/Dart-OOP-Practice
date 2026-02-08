void main() {
  Person person = Person();
  person.name = "Khaled";
  person.age = 20;
  person.printName();
  person.printAge();
}

class Person {
  String? name;
  int? age;

  printName() {
    print("My name is $name");
  }

  printAge() {
    print("My age is $age");
  }
}
