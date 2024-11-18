void simpleCalculator() {
  double num1 = 12, num2 = 4;
  print("Addition: ${num1 + num2}");
  print("Subtraction: ${num1 - num2}");
  print("Multiplication: ${num1 * num2}");
  if (num2 != 0) {
    print("Division: ${num1 / num2}");
  } else {
    print("Division by zero is not allowed.");
  }
}

void main() {
  print("\nSimple Calculator:");
  simpleCalculator();
}
