///Task
///
///Your task is to add up letters to one letter.
// The function will be given a list of letters, each one being a letter to add.
// Notes:
// Letters will always be lowercase.
// Letters can overflow (see second to last example of the description)
// If no letters are given, the function should return 'z'

void main() {
  String str = addLetters(["d", "b", "c", "a"]);
  print(str);
}

String addLetters(List<String> letters) {
  var alph = "abcdefghijklmnopqrstuvwxyz";
  var index = 0;
  if (letters.isEmpty) {
    return "z";
  }
  if (letters.length == 1) {
    return letters[0];
  }
  for (var i = 0; i < letters.length; i++) {
    index = index + alph.indexOf(letters[i]) + 1;
  }
  return alph[((index - 1) % alph.length)];
}
