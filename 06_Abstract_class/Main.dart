import 'Abstract_class_vehicle.dart';
import 'Car.dart';
import 'Bike.dart';
import 'Plane.dart';

void main() {
  Vehicle car = Car(120);
  Vehicle bike = Bike(30);
  Vehicle plane = Plane(800);

  car.move();
  car.showSpeed();

  print("==========");

  bike.move();
  bike.showSpeed();

  print("==========");

  plane.move();
  plane.showSpeed();
}
