import 'dart:io';

void main() {
  // Map cityCountry = <String, String>{};
  Map cityCountry = <String, dynamic>{};
  // Map cityCountry = <String, String>{};

  // Map<String, String> cityCountry = <String, String>{};

  cityCountry["New York"] = 'USA';
  cityCountry["London"] = 'UK';
  cityCountry["Paris"] = 'France';
  cityCountry["Berlin"] = 'Germany';

  // cityCountry.forEach((city, country) {
  //   print("$city is in $country");
  // });

  // searchCity(cityCountry);

  // String searchValue = "London";
  stdout.write("Enter the city to search for: ");
  String? searchValue = stdin.readLineSync()?.trim();
  if (cityCountry.containsKey(searchValue)) {
    print("$searchValue is in ${cityCountry[searchValue]}.");
  } else {
    print("City $searchValue not found in the map.");
  }
}

// void searchCity(Map<String, String> cityCountry) {
//   stdout.write("Enter the city to search for: ");
//   String? city = stdin.readLineSync()?.trim();

//   if (city != null && city.isNotEmpty) {
//     if (cityCountry.containsKey(city)) {
//       print("$city is in ${cityCountry[city]}.");
//     } else {
//       print("City $city not found in the map.");
//     }
//   } else {
//     print("Invalid input. Please enter a valid city name.");
//   }
// }
