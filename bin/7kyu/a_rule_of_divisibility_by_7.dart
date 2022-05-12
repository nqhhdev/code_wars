// Link: https://www.codewars.com/kata/55e6f5e58f7817808e00002e/train/dart

void main() {
  print(seven(1021));
}

List<int> seven(int m) {
  // your code
  int step = 0;
  while (m > 99) {
    m = (m / 10).floor() - 2 * (m % 10);
    step++;
  }

  return [m, step];
}
