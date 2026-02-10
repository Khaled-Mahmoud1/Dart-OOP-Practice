import 'Abstract_class_vehicle.dart';

class Plane extends Vehicle {
  Plane(int speed) : super(speed);

  @override
  void move() {
    print("The plane is flying in the sky...");
  }
}
