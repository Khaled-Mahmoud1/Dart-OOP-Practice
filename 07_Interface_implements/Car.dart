import 'Abstract_class_vehicle.dart';

class Car implements Vehicle {
  int _speed = 0;

  @override
  void start() {
    _speed = 60;
    print("Car started");
  }

  @override
  void stop() {
    _speed = 0;
    print("Car stopped");
  }

  @override
  int getSpeed() {
    return _speed;
  }
}
