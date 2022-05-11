// LINK : https://www.codewars.com/kata/550498447451fbbd7600041c/train/dart

// ignore_for_file: unrelated_type_equality_checks

import 'dart:math';

void main() {
  print(comp([
    -77,
    -60,
    -84,
    -168,
    -37,
    -45,
    -74,
    -148,
    3409,
    -47,
    -146,
    -56,
    -84,
    -150,
    -43,
    -194,
    505,
    -176,
    -123,
    -121
  ], [
    255025,
    5476,
    37636,
    14641,
    21904,
    28224,
    1369,
    2209,
    11621281,
    22500,
    3600,
    7056,
    30976,
    3136,
    15129,
    1849,
    21316,
    2025,
    5929,
    7056
  ]));
}

bool comp(List<int> a1, List<int> a2) {
  print((-2).abs());
  if (a1.length != a2.length) return false;
  a1 = a1.map((e) => e.abs()).toList();
  a1.sort();
  a2.sort();
  for (int i = 0; i < a1.length; i++) {
    if (a1[i] * a1[i] != a2[i]) return false;
  }
  return true;
}
