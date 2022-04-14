// Integral numbers can be even or odd.

// Even numbers satisfy n = 2m ( with m also integral ) and we will ( completely arbitrarily ) think of odd numbers as n = 2m + 1.
// Now, some odd numbers can be more odd than others: when for some n, m is more odd than for another's. Recursively. :]
// Even numbers are just not odd.

// Task
// Given a finite list of integral ( not necessarily non-negative ) numbers, determine the number that is odder than the rest.
// If there is no single such number, no number is odder than the rest; return Nothing, null or a similar empty value.

// Examples
// oddest([1,2]) => 1
// oddest([1,3]) => 3
// oddest([1,5]) => null
// Hint
// Do you really want one? Point or tap here.

//LINK: https://www.codewars.com/kata/5d6ee508aa004c0019723c1c/train/dart
void main() {
  print(oddest([1, 5]));
}

oddest(List<int> a) {
  if (a.isEmpty) {
    return null;
  } else if (a.length == 1) {
    return a.first;
  }

  a.sort(
    (a, b) => oddRank(b) - oddRank(a),
  );
  if (oddRank(a.first) == oddRank(a[1])) {
    return null;
  }
  return a.first;
}

oddRank(int x) {
  if (x == -1) {
    return 1e20;
  } else if (x % 2 == 0) {
    return 0;
  }

  var oddNum = (x / 2).round();
  return 1 + oddRank(oddNum);
}
