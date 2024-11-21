import 'dart:io';

void main() {
  do {
    // Display menu
    print("\nChoose an operation:");
    print("1. Add");
    print("2. Subtract");
    print("3. Multiply");
    stdout.write("Enter your choice (1, 2, or 3): ");
    int? choice = int.tryParse(stdin.readLineSync()!);

    // Validate choice
    if (choice == null || choice < 1 || choice > 3) {
      print("Invalid choice. Please try again.");
      continue;
    }

    // Take two numbers as input
    // stdout.write("Enter the first number: ");
    // int? num1 = int.tryParse(stdin.readLineSync()!);
    // stdout.write("Enter the second number: ");
    // int? num2 = int.tryParse(stdin.readLineSync()!);

    // if (num1 == null || num2 == null) {
    //   print("Invalid numbers. Please try again.");
    //   continue;
    // }
// Take and validate the first number
    int? num1;
    do {
      stdout.write("Enter the first number: ");
      num1 = int.tryParse(stdin.readLineSync()!);
      if (num1 == null) {
        print("Invalid input. Please enter a valid number.");
      }
    } while (num1 == null);

    // Take and validate the second number
    int? num2;
    do {
      stdout.write("Enter the second number: ");
      num2 = int.tryParse(stdin.readLineSync()!);
      if (num2 == null) {
        print("Invalid input. Please enter a valid number.");
      }
    } while (num2 == null);

    // Perform the selected operation
    int result;
    switch (choice) {
      case 1:
        result = num1 + num2;
        print("Result: $num1 + $num2 = $result");
        break;
      case 2:
        result = num1 - num2;
        print("Result: $num1 - $num2 = $result");
        break;
      case 3:
        result = num1 * num2;
        print("Result: $num1 * $num2 = $result");
        break;
    }

    // Ask if the user wants to continue
    stdout.write("Do you want to perform another operation? (y/n): ");
    String? continueChoice = stdin.readLineSync()?.toLowerCase();
    if (continueChoice != 'y') {
      print("Goodbye!");
      break; // Exit the loop if the user enters 'n'
    }
  } while (true); // Loop continues until the user chooses to exit
}
