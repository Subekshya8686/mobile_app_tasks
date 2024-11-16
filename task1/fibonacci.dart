// Task: Create a function that returns the Fibonacci sequence up to a given number of terms.
List<int> fibonacci(int n) {
  List<int> sequence = [0, 1];
  for (int i = 2; i < n; i++) {
    sequence.add(sequence[i - 1] + sequence[i - 2]);
  }
  return sequence.sublist(0, n);
}

void main() {
  int count = 7;
  print('First $count numbers in Fibonacci sequence: ${fibonacci(count)}');
}
