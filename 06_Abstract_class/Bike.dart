import 'Abstract_class_vehicle.dart';

class Bike extends Vehicle {
  Bike(int speed) : super(speed);

  @override
  void move() {
    print("The bike is moving on the street...");
  }
}
