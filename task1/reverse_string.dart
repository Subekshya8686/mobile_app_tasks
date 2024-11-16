// Task: Create a function that reverses a given string
String reverseString(String input) {
  return input.split('').reversed.join('');
}

void main() {
  String text = "hello";
  print('Reversed string of "$text" is "${reverseString(text)}"');
}
