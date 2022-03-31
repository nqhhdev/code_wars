void main() {
  String str = "lVHt\nJVhv\nCSbg\nyeCt";

  final i = oper((str) => horMirror(str), str);
  print(i);
}

String vertMirror(String str) {
  String line = "\\n"; ///VS Code signal

  var newS = List.from(str.split("\n"));

  List listTemp = [];

  for (int i = 0; i < newS.length; i++) {
    String str = newS[i];
    final newList = List.from(str.split("").reversed).join();
    listTemp.add(newList);
  }
  return listTemp.join(line).toString();
}

String horMirror(String str) {
  String line = "\\n"; ///VS Code signal

  var newS = List.from(str.split("\n").reversed);

  return newS.join(line.toString());
}

String oper(String Function(String str) fct, String s) {
  return fct(s);
}
