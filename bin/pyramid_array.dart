// Write a function that when given a number >= 0,
//returns an Array of ascending length subarrays.

// pyramid(0) => [ ]
// pyramid(1) => [ [1] ]
// pyramid(2) => [ [1], [1, 1] ]
// pyramid(3) => [ [1], [1, 1], [1, 1, 1] ]
//LINK : https://www.codewars.com/kata/515f51d438015969f7000013/train/dart

void main() {
  print(pyramid(3));
}

List<List<int>> pyramid(int n) {
  final List<List<int>> listFinal = [];
  if (n == 0) {
    return [];
  }
  for (int i = 1; i < n + 1; i++) {
    final List<int> listTemp = List.filled(i, 1);
    listFinal.addAll([listTemp]);
  }
  return listFinal;
}
