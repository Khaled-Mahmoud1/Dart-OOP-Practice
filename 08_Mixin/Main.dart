import 'UserService.dart';
import 'OrderService.dart';

void main() {
  UserService userService = UserService();
  userService.createUser("Khaled");

  OrderService orderService = OrderService();
  orderService.createOrder(101);
}
