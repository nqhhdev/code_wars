// LINK : https://www.codewars.com/kata/5ce9c1000bab0b001134f5af/train/dart

void main() {
  print(quarter(2));
}

int quarter(int month) => (month/3).ceil();
