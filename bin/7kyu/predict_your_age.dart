// LINK  : https://www.codewars.com/kata/5aff237c578a14752d0035ae/train/dart
import 'dart:math';

void main() {
  print(predictAge(65, 60, 75, 55, 60, 63, 64, 45));
}

int predictAge(int age1, int age2, int age3, int age4, int age5, int age6,
    int age7, int age8) {
  final temp = age1 * age1 +
      age2 * age2 +
      age3 * age3 +
      age4 * age4 +
      age5 * age5 +
      age6 * age6 +
      age7 * age7 +
      age8 * age8;

  return sqrt(temp) ~/ 2;
}
