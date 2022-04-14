// Task
// A rectangle with sides equal to even integers a and b is drawn on the Cartesian plane. Its center (the intersection point of its diagonals) coincides with the point (0, 0), but the sides of the rectangle are not parallel to the axes; instead, they are forming 45 degree angles with the axes.

// How many points with integer coordinates are located inside the given rectangle (including on its sides)?

// Example
// For a = 6 and b = 4, the output should be 23

// The following picture illustrates the example, and the 23 points are marked green.

// Input/Output
// [input] integer a

// A positive even integer.

// Constraints: 2 ≤ a ≤ 10000.

// [input] integer b

// A positive even integer.

// Constraints: 2 ≤ b ≤ 10000.

// [output] an integer

// The number of inner points with integer coordinates.

// Link : https://www.codewars.com/kata/5886e082a836a691340000c3/train/dart

import 'dart:math';

void main() {
  print(rectangleRotation(30, 2));
}

int rectangleRotation(int a, int b) {
  // your code here
  final temp = (pow(a ~/ 2, 2) + pow(b ~/ 2, 2)).toInt();
  print(sqrt(pow(a ~/ 2, 2)));
  print(sqrt(pow(b ~/ 2, 2)));
  print(temp);
  int count = 0;
  for (int i = -temp; i < temp; i++) {
    for (int j = -temp; j < temp; j++) {
      if (checkValue(i, j, a, -1) && checkValue(i, j, b, 1)) {
        count++;
      }
    }
  }
  return count;
}

bool checkValue(var x, y, z, sign) {
  final one = sign * x - (z / 2) * sqrt(2) < y;
  final two = sign * x + (z / 2) * sqrt(2) > y;
  return one && two;
}
