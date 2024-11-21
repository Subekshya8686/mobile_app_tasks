void printNumbersExcept41() {
  for (int i = 1; i <= 100; i++) {
    if (i == 41) continue;
    print(i);
  }
}

void main() {
  print("\nPrinting numbers 1 to 100, excluding 41:");
  printNumbersExcept41();
}