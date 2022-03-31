





void main() {
  final str = "a    b       ";
  List<String> listStr = wave(str);
  print(listStr);
}

List<String> wave(String str) {
  List<String> listStr = [];
  String temp;

  for (var i = 0; i < str.length; i++) {
    if (!str[i].contains(" ")) {
      temp = str.replaceFirst(
        str[i],
        str[i].toUpperCase(),
        i,
      );
      listStr.add(temp);
    }
  }
  return listStr;
}
