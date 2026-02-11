import 'Car.dart';
import 'Bike.dart';
import 'Abstract_class_vehicle.dart';

void main() {
  Vehicle myCar = Car();
  Vehicle myBike = Bike();

  myCar.start();
  print("Car speed: ${myCar.getSpeed()}");

  myBike.start();
  print("Bike speed: ${myBike.getSpeed()}");
}
