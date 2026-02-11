import 'Mixins.dart';

class OrderService with Logger {
  void createOrder(int id) {
    log("Order #$id created");
  }
}
