class Animal {
  void sound() {
    print("Animal makes a sound.");
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print("Cat says Meow.");
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print("Dog says Bark.");
  }
}

void main() {
  Animal animal;

  animal = Cat();
  animal.sound(); // Output: Cat says Meow.

  animal = Dog();
  animal.sound(); // Output: Dog says Bark.
}
