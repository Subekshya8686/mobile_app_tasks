void sumOfNaturalNumbers() {
  int n = 10;
  int sum = (n * (n + 1)) ~/ 2;
  print("The sum of first $n natural numbers is: $sum");
}

void main() {
  print("\nSum of natural numbers:");
  sumOfNaturalNumbers();
}
