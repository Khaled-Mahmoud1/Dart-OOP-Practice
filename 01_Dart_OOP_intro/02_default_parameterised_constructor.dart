void main() {
  Person person = Person("Khaled", "20", "khaled@example.com");
  print("My name is ${person.name}");
  print("My age is ${person.age}");
  print("My email is ${person.email}");
}

class Person {
  String? name;
  String? age;
  String? email;

  // Parameterized constructor
  Person(String name, String age, String email) {
    this.name = name;
    this.age = age;
    this.email = email;
  }

  // Short hand parameterized constructor
  //Person(this.name, this.age, this.email);

  // Optional parameterized constructor
  //Person(this.name, [this.age, this.email]);
}
