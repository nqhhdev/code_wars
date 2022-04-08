// When working with color values it can sometimes be useful to extract
//the individual red, green, and blue (RGB) component values for a color.
//Implement a function that meets these requirements:

// Accepts a case-insensitive hexadecimal color string as its parameter (ex. "#FF9933" or "#ff9933")
// Returns a Map<String, int> with the structure {r: 255, g: 153, b: 51} where r, g, and b range from 0 through 255
// Note: your implementation does not need to support the shorthand form of hexadecimal notation (ie "#FFF")

// Example
// "#FF9933" --> {r: 255, g: 153, b: 51}

// LINK: https://www.codewars.com/kata/5282b48bb70058e4c4000fa7/train/dart

void main() {
  print(hexToRGB("#FFFFFF"));
}

Map<String, int> hexToRGB(String hex) {
  final String temp;
  temp = hex.toUpperCase().replaceAll("#", "");

  final temp1 = temp.substring(0, 2);
  final temp2 = temp.substring(2, 4);
  final temp3 = temp.substring(4, 6);
  if (hex == "#000000") {
    return {
      "r": 0,
      "g": 0,
      "b": 0,
    };
  }
  if (hex == "#FFFFF") {
    return {
      "r": 255,
      "g": 255,
      "b": 255,
    };
  }
  return {
    "r": convert(temp1),
    "g": convert(temp2),
    "b": convert(temp3),
  };
}

int convert(String input) {
  if (input == "FF") {
    return 255;
  } else if (input == "00") {
    return 0;
  } else {
    return int.parse(input, radix: 16);
  }
}

Map<String, int> hexToRGBSolutionTwo(String hex) => {
      'r': int.parse(hex.substring(1, 3), radix: 16),
      'g': int.parse(hex.substring(3, 5), radix: 16),
      'b': int.parse(hex.substring(5, 7), radix: 16)
    };
