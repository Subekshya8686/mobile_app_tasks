void checkOddEven() {
  int number = 23;
  if (number % 2 == 0) {
    print("$number is Even.");
  } else {
    print("$number is Odd.");
  }
}

void main() {
  print("Checking if a number is Odd or Even:");
  checkOddEven();
}
