// LINK : https://www.codewars.com/kata/56cd44e1aa4ac7879200010b/train/dart

void main() {
  print(isUpperCase("str"));
}

bool isUpperCase(String str) {
  // your code here
  if (str.contains(str.toUpperCase())) {
    return true;
  }
  return false;
}
