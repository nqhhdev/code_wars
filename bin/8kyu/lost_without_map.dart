// LINK : https://www.codewars.com/kata/57f781872e3d8ca2a000007e/train/dart

void main() {
  print(maps([1, 2, 3]));
}

List<int> maps(List<int> arr) {
  // your code here
  final mapsFinal = arr.map((e) => e * 2).toList();
  return mapsFinal;
}
