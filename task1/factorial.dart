// Task: Create a function that calculates the factorial of a given integer
int factorial(int n) {
  if (n <= 1) return 1;
  return n * factorial(n - 1);
}

void main() {
  int num = 5;
  print('Factorial of $num is ${factorial(num)}');
}
