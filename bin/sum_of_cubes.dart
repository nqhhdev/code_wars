// Write a function that takes a positive integer n,
//sums all the cubed values from 1 to n, and returns that sum.

// Assume that the input n will always be a positive integer.

// Examples: (Input --> output)

// 2 --> 9 (sum of the cubes of 1 and 2 is 1 + 8)
// 3 --> 36 (sum of the cubes of 1, 2, and 3 is 1 + 8 + 27)

//LINK: https://www.codewars.com/kata/59a8570b570190d313000037/train/dart
import 'dart:math';

void main() {
  print(sumCubes(77000));
}

num sumCubes(int n) {
  num sumCubes = (pow((n * (n + 1)) / 2, 2));
  return sumCubes;
}