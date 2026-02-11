import 'Abstract_class_vehicle.dart';

class Bike implements Vehicle {
  int _speed = 0;

  @override
  void start() {
    _speed = 40;
    print("Bike started");
  }

  @override
  void stop() {
    _speed = 0;
    print("Bike stopped");
  }

  @override
  int getSpeed() {
    return _speed;
  }
}
