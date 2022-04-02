// The rgb function is incomplete. Complete it so that passing in RGB decimal values will result in a hexadecimal representation being returned. Valid decimal values for RGB are 0 - 255. Any values that fall out of that range must be rounded to the closest valid value.

// Note: Your answer should always be 6 characters long, the shorthand with 3 will not work here.

// The following are examples of expected output values:

// rgb(255, 255, 255) // returns FFFFFF
// rgb(255, 255, 300) // returns FFFFFF
// rgb(0, 0, 0)       // returns 000000
// rgb(148, 0, 211)   // returns 9400D3

// LINK : https://www.codewars.com/kata/513e08acc600c94f01000001/train/dart

void main() {
  print(rgb(212, 53, 12));
}

String rgb(int r, int g, int b) {
  if (r == 0 && g == 0 && b == 0) return "000000";

  return toHex(r) + toHex(g) + toHex(b); // replace with your solution
}

String toHex(int input) {
  if (input <= 0) {
    return "00";
  } else if (input >= 255) {
    return "FF";
  } else {
    return input.toRadixString(16).length < 2
        ? "0${input.toRadixString(16).toUpperCase()}"
        : input.toRadixString(16).toUpperCase();
  }
}

// SOLUTION TWO

String rgbSolutionTwo(int r, int g, int b) {
  return [r, g, b]
      .map((e) => e.clamp(0, 255).toInt().toRadixString(16).padLeft(2, '0'))
      .join()
      .toUpperCase();
}
