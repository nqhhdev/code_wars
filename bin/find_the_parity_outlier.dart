// You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a method that takes the array as an argument and returns this "outlier" N.

// Examples
// [2, 4, 0, 100, 4, 11, 2602, 36]
// Should return: 11 (the only odd number)

// [160, 3, 1719, 19, 11, 13, -21]
// Should return: 160 (the only even number)

// Link:https://www.codewars.com/kata/5526fc09a1bbd946250002dc/dart


void main() {
  print(find([99, 77, 331, 717, 89, 22073, 8, 7, 101]));
}

int find(List integers) {
  final even = integers.where((element) => element % 2 == 0);
  final odd = integers.where((element) => element % 2 != 0);

  return even.length  == 1 ? even.first : odd.first;
}
