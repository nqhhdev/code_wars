// Check to see if a string has the same amount of 'x's and 'o's.
// The method must return a boolean and be case insensitive. The string can contain any char.
// Examples input/output:

// XO("ooxx") => true
// XO("xooxx") => false
// XO("ooxXm") => true
// XO("zpzpzpp") => true // when no 'x' and 'o' is present should return true
// XO("zzoo") => false

// /LINK: https://www.codewars.com/kata/55908aad6620c066bc00002a/train/dart

void main() {
  print(xO("xxxoo"));
}

bool xO(str) {
  String x = "X";
  String o = "O";
  int duplicates = 0;
  List listTemp = [];
  bool confirm = false;

  listTemp = str.toUpperCase().split("");

  if (!listTemp.contains(x) && !listTemp.contains(o)) {
    return true;
  } else {
    var counts = <String, int>{};
    for (var i in listTemp) {
      counts[i] = (counts[i] ?? 0) + 1;
    }
    counts.forEach((_, value) {
      if (value % 2 == 0) {
        duplicates++;
      }
    });
    confirm = counts['X'] == counts['O'];
  }

  return duplicates % 2 == 0 && confirm ? true : false;
}


bool xOSolutionTwo(str) {
  var s = str.toLowerCase();
  return 'x'.allMatches(s).length == 'o'.allMatches(s).length;
}