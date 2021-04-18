import 'dart:math';

class Imc{

  double height;
  double weight;

  Imc(this.height, this.weight);

  double calculate() {
    return weight / pow(height, 2);
  }
}