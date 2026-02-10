abstract class Vehicle {
  int speed;

  Vehicle(this.speed);

  // abstract method
  void move();

  // normal method
  void showSpeed() {
    print("Speed is $speed km/h");
  }
}
