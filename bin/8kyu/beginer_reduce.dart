// LINK : https://www.codewars.com/kata/57f780909f7e8e3183000078/train/dart

void main() {
  print(grow([1, 2, 3, 4]));
}

int grow(List<int> arr) {
  // your code here
  return arr.reduce((value, element) => value * element);
}
