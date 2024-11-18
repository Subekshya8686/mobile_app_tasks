void checkNumberType() {
  int number = -5;
  if (number > 0) {
    print("$number is Positive.");
  } else if (number < 0) {
    print("$number is Negative.");
  } else {
    print("$number is Zero.");
  }
}

void main() {
  print("\nChecking if a number is Positive, Negative, or Zero:");
  checkNumberType();
}
