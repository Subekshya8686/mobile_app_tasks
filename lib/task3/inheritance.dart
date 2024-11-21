class Vehicle {
  void start() {
    print("Vehicle is starting.");
  }
}

class Car extends Vehicle {
  void drive() {
    print("Car is driving.");
  }
}

void main() {
  Car car = Car();
  car.start(); // Inherited from Vehicle
  car.drive(); // Specific to Car
}
