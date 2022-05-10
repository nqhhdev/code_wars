// LINK : https://www.codewars.com/kata/58cb43f4256836ed95000f97/train/dart

import 'dart:math';

void main() {
  print(findDifference([2, 2, 3], [5, 4, 1]));
}

int findDifference(List<int> a, List<int> b) {
  final total = (a[0] * a[1] * a[2] - b[0] * b[1] * b[2]).abs();
  return total;
}
