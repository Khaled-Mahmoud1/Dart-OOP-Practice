class MathUtils {
  // Static methods
  static int add(int a, int b) {
    return a + b;
  }

  static int multiply(int a, int b) {
    return a * b;
  }
}

void main() {
  print(MathUtils.add(5, 3)); // 8
  print(MathUtils.multiply(4, 10)); // 40
}
