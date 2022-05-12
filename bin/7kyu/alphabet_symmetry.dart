// LINK : https://www.codewars.com/kata/59d9ff9f7905dfeed50000b0/train/dart

void main() {
  print(solve(["abode", "ABc", "xyzD"]));
}

List<int> solve(List<String> arr) {
  String alphabeth = "abcdefghijklmnopqrstuvwxyz";
  List<int> listFinal = [];
  for (int i = 0; i < arr.length; i++) {
    int count = 0;
    for (int j = 0; j < arr[i].length; j++) {
      if (arr[i][j].toLowerCase() == alphabeth[j]) {
        count++;
      }
    }
    listFinal.add(count);
  }
  return listFinal;
}

List<int> solve2(List<String> arr) {
  return List.generate(arr.length, (i) {
    int c = 0;
    return arr[i].toUpperCase().codeUnits.fold<int>(0, (a, b) {
      c++;
      return c == (b - 64) ? ++a : a;
    });
  });
}
