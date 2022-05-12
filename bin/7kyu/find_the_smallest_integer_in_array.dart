// LINK : https://www.codewars.com/kata/55a2d7ebe362935a210000b2/dart

void main() {
  print(findSmallestInt([34, -345, -1, 100]));
}

int findSmallestInt(List<int> arr) {
  // Code here
  arr.sort();
  return arr.first;
}
