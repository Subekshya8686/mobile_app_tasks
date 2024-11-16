// Task: Write a function to find the maximum number in a list of integers.
int findMax(List<int> numbers) {
  if (numbers.isEmpty) throw ArgumentError("List cannot be empty");
  int max = numbers[0];
  for (var number in numbers) {
    if (number > max) max = number;
  }
  return max;
}

void main() {
  List<int> numbers = [2, 7, 3, 8, 5];
  print('Max in $numbers is ${findMax(numbers)}');
}
