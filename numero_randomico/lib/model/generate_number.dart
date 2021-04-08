import 'dart:math';

class Number {
  static int generateRandomicNumber() {
    Random random = new Random();
    return random.nextInt(100);
  }
}