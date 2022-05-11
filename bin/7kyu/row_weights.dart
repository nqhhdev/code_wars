// link : https://www.codewars.com/kata/5abd66a5ccfd1130b30000a9/train/dart
import 'package:collection/collection.dart';
void main() {
  print(rowWeights([50, 60, 70, 80]));
}

List<int> rowWeights(List<int> arr) {
  if (arr.length == 1) {
    return [arr.first, 0];
  }
  List<int> temp1 = [];
  List<int> temp2 = [];

  for (int i = 0; i < arr.length; i++) {
    if (i % 2 == 0) {
      temp1.add(arr[i]);
    } else {
      temp2.add(arr[i]);
    }
  }

  return [temp1.sum, temp2.sum];
}
