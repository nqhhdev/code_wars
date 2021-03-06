// TASK

// Take 2 strings s1 and s2 including only letters from ato z.
// Return a new sorted string, the longest possible, containing distinct letters - each taken only once - coming from s1 or s2.

// Example
// a = "xyaabbbccccdefww"
// b = "xxxxyyyyabklmopq"
// longest(a, b) -> "abcdefklmopqwxy"

// a = "abcdefghijklmnopqrstuvwxyz"
// longest(a, a) -> "abcdefghijklmnopqrstuvwxyz"

void main() {
  print(longest("xyaabbbccccdefww", "xyaabbbccccdefww"));
}

String longest(String a, String b) {
  List<String> listTemp = (a + b).split("");

  final list = listTemp.toSet().toList();

  list.sort();

  return list.join();
}
