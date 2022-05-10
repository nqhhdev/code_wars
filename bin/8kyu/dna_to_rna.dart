// Link: https://www.codewars.com/kata/5556282156230d0e5e000089/train/dart

void main() {
  print(rnaToDna2("TTTT"));
}

String rnaToDna2(String dna) {
  return dna.replaceAll("T", "U");
}

String rnaToDna(String dna) {
  if (dna.isEmpty) {
    return "";
  }
  if (!"U".contains(dna) &&
      "G".contains(dna) &&
      "C".contains(dna) &&
      "a".contains(dna)) {
    return dna;
  } else {
    return dna.replaceAll("T", "U");
  }
}
