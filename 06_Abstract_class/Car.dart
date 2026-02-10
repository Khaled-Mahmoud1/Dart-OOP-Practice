import 'Abstract_class_vehicle.dart';

class Car extends Vehicle {
  Car(int speed) : super(speed);

  @override
  void move() {
    print("The car is moving on the road...");
  }
}
