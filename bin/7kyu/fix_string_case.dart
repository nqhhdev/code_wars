// LINK :  https://www.codewars.com/kata/5b180e9fedaa564a7000009a/train/dart

void main() {
  print(solve("CODeeeeee"));
}

String solve(String s) {
  // your code here
  if (s.contains(s.toLowerCase())) {
    return s;
  }
  if (s.contains(s.toUpperCase())) {
    return s;
  }
  int count = 0;
  final listTemp = s.split("");
  for (var element in listTemp) {
    if (element.contains(element.toLowerCase())) {
      count++;
    }
  }
  if (count > listTemp.length / 2) {
    return s.toLowerCase();
  } else if (count == listTemp.length / 2) {
    return s.toLowerCase();
  } else {
    return s.toUpperCase();
  }
}
