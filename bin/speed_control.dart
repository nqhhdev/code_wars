import 'dart:math';

void main() {
  final s = 20;
  final x = [0.0, 0.23, 0.46, 0.69, 0.92, 1.15, 1.38, 1.61];
  final gps1 = gps(s, x);
  final gps2 = gpsSolution2(s, x);
  print("Solution 1 : $gps1");
  print("Solution 2 : $gps2");
}

int gps(int s, List<double> x) {
  var maxSpeed = 0;
  for (int i = 1; i < x.length - 1; i++) {
    maxSpeed = max(maxSpeed, (3600 * (x[i] - (x[i - 1])) / s)).toInt();
  }
  return maxSpeed;
}

int gpsSolution2(int s, List<double> x) {
  if (x.length < 2) return 0;
  List<double> speed = [];
  for (int i = 0; i < x.length - 1; i++) {
    var temp = (3600 * (x[i + 1] - (x[i])) / s);
    speed.add(temp);
  }
  speed.sort();
  return speed[speed.length - 1].toInt();
}
