// In mathematics, a Diophantine equation is a polynomial equation, usually with two or more unknowns, such that only the integer solutions are sought or studied.

// In this kata we want to find all integers x, y (x >= 0, y >= 0) solutions of a diophantine equation of the form:

// x2 - 4 * y2 = n
// (where the unknowns are x and y, and n is a given positive number) in decreasing order of the positive xi.

// If there is no solution return [] or "[]" or "". (See "RUN SAMPLE TESTS" for examples of returns).

// Examples:
// solEquaStr(90005) --> "[[45003, 22501], [9003, 4499], [981, 467], [309, 37]]"
// solEquaStr(90002) --> "[]"
// Hint:
// x2 - 4 * y2 = (x - 2*y) * (x + 2*y)

// LINK: https://www.codewars.com/kata/554f76dca89983cc400000bb/train/dart

import 'dart:math';

void main() {
  print(solEqua(9005));
}

// x = (a + b) /2
// y = (b - a) /4
// x^2 - 4y^2 = n => ab = n
List<List<int>> solEqua(n) {
  final List<List<int>> result = [];
  double b, x, y;
  print(sqrt(n).toInt());
  for (int a = 1; a <= sqrt(n).toInt(); a++) {
    if (isInteger(b = n / a)) {
      if (isInteger(x = (a + b) / 2)) {
        if (isInteger(y = (b - a) / 4)) {
          final list = [x.toInt(), y.toInt()];
          result.addAll([List<int>.from(list)]);
        }
      }
    }
  }
  return result;
}

bool isInteger(num value) => value is int || value == value.roundToDouble();
