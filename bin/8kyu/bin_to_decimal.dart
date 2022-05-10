// LINK : https://www.codewars.com/kata/57a5c31ce298a7e6b7000334/train/dart

void main() {
  print(binToDec(1001001));
}

int binToDec(bin) {
  // your code here
  return int.parse(bin.toString(), radix: 2);
}
