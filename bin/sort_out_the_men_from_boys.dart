// Scenario
// Now that the competition gets tough it will Sort out the men from the boys .

// Men are the Even numbers and Boys are the odd

// Task
// Given an array/list [] of n integers , Separate The even numbers from the odds , or Separate the men from the boys

// Notes
// Return an array/list where Even numbers come first then odds

// Since , Men are stronger than Boys , Then Even numbers in ascending order While odds in descending .

// Array/list size is at least 4 .

// Array/list numbers could be a mixture of positives , negatives .

// Have no fear , It is guaranteed that no Zeroes will exists .!alt
// Repetition of numbers in the array/list could occur , So (duplications are no

///LINK : https://www.codewars.com/kata/5af15a37de4c7f223e00012d/train/dart

void main() {
  List input = [82, 91, 72, 76, 76, 100, 85];

  print(menFromBoys(input));
}

List<int> menFromBoys(arr) {
  List<int> newListOdds = [];
  List<int> newListNotOdds = [];
  List<int> listFinal = [];

  var newList = List.from(arr).toSet();

  for (var element in newList) {
    if (element % 2 == 0) {
      newListOdds.add(element);
    } else {
      newListNotOdds.add(element);
    }
  }
  newListOdds.sort();
  newListNotOdds.sort((b, a) => a.compareTo(b));
  listFinal = newListOdds + newListNotOdds;
  return listFinal;
}
