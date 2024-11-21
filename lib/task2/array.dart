import 'dart:io';

void main() {
  // Initialize an empty list
  List<int> lstInt = [];

  print("Enter 10 numbers:");

  // Use a for loop to take 10 inputs
  for (int i = 0; i < 10; i++) {
    stdout.write("Enter number ${i + 1}: ");
    int? input = int.tryParse(stdin.readLineSync()!); // Read and parse input
    if (input != null) {
      lstInt.add(input); // Add input to the list
    } else {
      print("Invalid input, please enter a valid number.");
      i--; // Retry the same index
    }
  }

  // Print the filled array
  printArr(lstInt);
  print("You entered: $lstInt");
  calculateEvenNumber(lstInt);
  linearSearch(lstInt);
}

void printArr(List<int> arr) {
  print("-------Array Values Are---------");
  for (int i = 0; i < arr.length; i++) {
    // print("Index $i: ${arr[i]}");
    print(arr[i]);
    // print("You entered: $arr");
  }

  for (int i in arr) {
    print(i);
  }
}

void calculateEvenNumber(List<int> lstInt) {
  int count = 0;
  for (int i in lstInt) {
    if (i % 2 == 0) {
      count++;
      print(i);
    }
  }
  print("No of even numbers: $count");
}
void linearSearch(List<int> lstInt) {
  // Perform linear search
  stdout.write("Enter the value to search for: ");
  int? searchValue = int.tryParse(stdin.readLineSync()!);
  if (searchValue != null) {
    int index = search(lstInt, searchValue); // Use a helper search function
    if (index != -1) {
      print("Value $searchValue found at index $index.");
    } else {
      print("Value $searchValue not found in the list.");
    }
  } else {
    print("Invalid input for search value.");
  }
}

// Helper function to perform the search
int search(List<int> arr, int value) {
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == value) {
      return i; // Return the index of the value
    }
  }
  return -1; // Return -1 if the value is not found
}
