// Task: Write a function to check if a given integer is a prime number
bool isPrime(int number) {
  if (number <= 1) return false;
  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) return false;
  }
  return true;
}

void main() {
  int num = 7;
  print('Is $num prime? ${isPrime(num)}');
}
