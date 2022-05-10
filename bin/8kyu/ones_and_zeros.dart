// link : https://www.codewars.com/kata/578553c3a1b8d5c40300037c/train/dart

void main() {
  print(binaryArrayToNumber([1, 1, 1, 1]));
}

int binaryArrayToNumber(List<int> arr) {
  // your code here
  arr.map((e) => e.toString()).join(",");
  print(arr);
  // return int.parse(arr.toString(), radix: 2);
  return 0;
}
