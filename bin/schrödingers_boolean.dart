// Can a value be both true and false?

// Define omniBool so that it returns true for the following:

// omniBool == true && omniBool == false

// LINK: https://www.codewars.com/kata/5a5f9f80f5dc3f942b002309/train/dart

void main() {}
bool trick = false;
bool get omnibool => trick = !trick;
