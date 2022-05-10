// LINK : https://www.codewars.com/kata/58649884a1659ed6cb000072/train/dart

void main() {
  print(updateLight("green"));
}

String updateLight(String current) {
  if ("green".contains(current)) {
    return "yellow";
  }
  if ("yellow".contains(current)) {
    return "red";
  }
  if ("red".contains(current)) {
    return "green";
  }
  return "";
}
