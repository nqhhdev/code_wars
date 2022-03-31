// Task
// King Arthur and his knights are having a New Years party.
//Last year Lancelot was jealous of Arthur, because Arthur had a date and Lancelot did not, and they started a duel.

// To prevent this from happening again,
//Arthur wants to make sure that there are at least as many women as men at this year's party. He gave you a list of integers of all the party goers.

// Arthur needs you to return true if he needs to invite more women or false if he is all set.

// Input/Output
// [input] integer array L ($a in PHP)
// An array (guaranteed non-associative in PHP) representing the genders of the attendees,
// where -1 represents women and 1 represents men.

// 2 <= L.length <= 50

// [output] a boolean value

// true if Arthur need to invite more women, false otherwise.

// LINK https://www.codewars.com/kata/58acfe4ae0201e1708000075/train/dart

void main() {
  var listPerson = [1, -1];
  var listPerson2 = [-1, -1, -1];

  print(inviteMoreWomen(listPerson));
  print(inviteMoreWomenSolution2(listPerson2));
}

bool inviteMoreWomen(List<int> l) {
  int men = 1;
  int women = -1;
  if (!l.contains(men)) {
    return false;
  } else {
    var counts = <int, int>{};
    for (var i in l) {
      counts[i] = (counts[i] ?? 0) + 1;
    }
    if ((counts[men] ?? 0) > (counts[women] ?? 0)) {
      return true;
    } else {
      return false;
    }
  }
}

bool inviteMoreWomenSolution2(List<int> l) {
  return l.reduce((a, b) => a + b) > 0;
}
