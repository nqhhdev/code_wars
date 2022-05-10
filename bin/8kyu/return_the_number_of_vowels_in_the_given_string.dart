// LINK : https://www.codewars.com/kata/54ff3102c1bad923760001f3/train/dart
void main() {
  print(getCount2("aeiou"));
}

int getCount(String inputStr) {
  //your code here
  int count = 0;
  String vowels = "aeiou";
  for (int i = 0; i < inputStr.length; i++) {
    for (int j = 0; j < vowels.split("").length; j++) {
      if (inputStr[i] == vowels[j]) {
        count++;
      }
    }
  }
  return count;
}

int getCount2(String inputStr) {
  var vowels = ['a', 'e', 'i', 'o', 'u'];
  return inputStr
      .split('')
      .where((String letter) => vowels.contains(letter))
      .length;
}
