// You are given a string of n lines, each substring being n characters long: For example:

// s = "abcd\nefgh\nijkl\nmnop"

// We will study some transformations of this square of strings.

// Symmetry with respect to the main diagonal: diag_1_sym (or diag1Sym or diag-1-sym)
// diag_1_sym(s) => "aeim\nbfjn\ncgko\ndhlp"
// Clockwise rotation 90 degrees: rot_90_clock (or rot90Clock or rot-90-clock)
// rot_90_clock(s) => "miea\nnjfb\nokgc\nplhd"
// selfie_and_diag1(s) (or selfieAndDiag1 or selfie-and-diag1) It is initial string + string obtained by symmetry with respect to the main diagonal.
// s = "abcd\nefgh\nijkl\nmnop" -->
// "abcd|aeim\nefgh|bfjn\nijkl|cgko\nmnop|dhlp"
// or printed for the last:
// selfie_and_diag1
// abcd|aeim
// efgh|bfjn
// ijkl|cgko
// mnop|dhlp
// Task:
// Write these functions diag_1_sym, rot_90_clock, selfie_and_diag1
// and

// high-order function oper(fct, s) where

// fct is the function of one variable f to apply to the string s (fct will be one of diag_1_sym, rot_90_clock, selfie_and_diag1)

// Examples:
// s = "abcd\nefgh\nijkl\nmnop"
// oper(diag_1_sym, s) => "aeim\nbfjn\ncgko\ndhlp"
// oper(rot_90_clock, s) => "miea\nnjfb\nokgc\nplhd"
// oper(selfie_and_diag1, s) => "abcd|aeim\nefgh|bfjn\nijkl|cgko\nmnop|dhlp"
// Notes:
// The form of the parameter fct in oper changes according to the language. You can see each form according to the language in "Your test cases".
// It could be easier to take these katas from number (I) to number (IV)
// Bash Note: The output strings should be separated by \r instead of \n. See "Sample Tests".

// LINK : https://www.codewars.com/kata/56dbeec613c2f63be4000be6/train/dart

void main() {
  print(oper(diag1Sym, "abcd\nefgh\nijkl\nmnop"));
  print(oper(rot90Clock, "abcd\nefgh\nijkl\nmnop"));

  print(oper(selfieAndDiag1, "abcd\nefgh\nijkl\nmnop"));
  print(oper(diag1SymSolutionTwo, "abcd\nefgh\nijkl\nmnop"));
  print(oper(rot90ClockSolutionTwo, "abcd\nefgh\nijkl\nmnop"));

  print(oper(selfieAndDiag1SolutionTwo, "abcd\nefgh\nijkl\nmnop"));
}

String diag1Sym(String str) {
  var ss = str.split('\n');
  return Iterable.generate(ss.length, (i) => ss.map((s) => s[i]).join())
      .join('\n');
}

String rot90Clock(String str) => diag1Sym(str)
    .split('\n')
    .map((s) => s.split('').reversed.join())
    .join('\n');

String selfieAndDiag1(String str) {
  var s1 = str.split('\n');
  var s2 = diag1Sym(str).split('\n');
  return Iterable.generate(s1.length, (i) => s1[i] + '|' + s2[i]).join('\n');
}

String diag1SymSolutionTwo(String str) {
  List<String> res = [];
  List<String> arr = str.split('\n');
  for (int i = 0; i < arr.length; i++) {
    res.add('');
    for (int j = 0; j < arr.length; j++) {
      res[i] += arr[j][i];
    }
  }
  return res.join('\n');
}

String rot90ClockSolutionTwo(String str) {
  List<String> res = [];
  List<String> arr = str.split('\n');
  for (int i = 0; i < arr.length; i++) {
    res.add('');
    for (int j = 0; j < arr.length; j++) {
      res[i] += arr[arr.length - j - 1][i];
    }
  }
  return res.join('\n');
}

String selfieAndDiag1SolutionTwo(String str) {
  List<String> res = [];
  List<String> arr = str.split('\n');
  for (int i = 0; i < arr.length; i++) {
    res.add('');
    for (int j = 0; j < arr.length; j++) {
      res[i] += arr[j][i];
    }
    res[i] = arr[i] + '|' + res[i];
  }
  return res.join('\n');
}

String oper(String Function(String str) fct, String s) {
  return fct(s);
}
