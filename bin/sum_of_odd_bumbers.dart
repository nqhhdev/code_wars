// TASK

// Given the triangle of consecutive odd numbers:

//               1
//           3     5
//        7     9    11
//    13    15    17    19
// 21    23    25    27    29
// ...

// Calculate the sum of the numbers in the nth row of this triangle (starting at index 1) e.g.: (Input --> Output)

// 1 -->  1
// 2 --> 3 + 5 = 8

import 'dart:math';

///LINK: https://www.codewars.com/kata/55fd2d567d94ac3bc9000064/train/dart
///

void main() {
  print(rowSumOddNumbers(4));
  print(rowSumOddNumbersSolutionTwo(10));
}

int rowSumOddNumbers(int n) {
  final sum = pow(n, 3);
  return sum.toInt();
}

int rowSumOddNumbersSolutionTwo(int n) {
  var rowSum = 0;

  for (var i = 0; i < n; i++) {
    rowSum += n * (n - 1) + 1 + i * 2;
  }

  return rowSum;
}
