import 'package:code_wars/code_wars.dart' as code_wars;

void main() {
  final years = nbYear(1500, 5, 100, 5000);
  print(years);
}

int nbYear(int p0, double percent, int aug, int p) {
  var pTemp = p0;
  var year = 0;

  while (pTemp < p) {
    pTemp = pTemp + pTemp * percent ~/ 100 + aug;
    year++;
  }

  return year;
}
