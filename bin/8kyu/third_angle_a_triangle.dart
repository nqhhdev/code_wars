// link : https://www.codewars.com/kata/5a023c426975981341000014/train/dart/

void main() {
  print(otherAngle(30, 60));
}

int otherAngle(int a, int b) {
  // your code here
  int c = 0;
  if (a > 0 && b > 0) {
    c = 180 - a - b;
  }
  return c;
}
