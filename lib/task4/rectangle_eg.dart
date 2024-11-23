class Rectangle {
  final int height;
  final int width;

  Rectangle({required this.height, required this.width});

  //copyWith method
  Rectangle copyWith({int? height, int? width}) {
    return Rectangle(
      height: height ?? this.height,
      width: width ?? this.width,
    );
  }

  int calculateArea() {
    return height * width;
  }
}

// Person : fname,lname,age,address
class Person {
  final String fname;
  final String lname;
  final int age;
  final String address;

  Person(
      {required this.fname,
      required this.lname,
      required this.age,
      required this.address});

  Person copyWith({String? fname, String? lname, int? age, String? address}) {
    return Person(
      fname: fname ?? this.fname,
      lname: lname ?? this.lname,
      age: age ?? this.age,
      address: address ?? this.address,
    );
  }

// class ko lai k garera dekhaune
  @override
  String toString() {
    // TODO: implement toString
    return 'fname: $fname, lname: $lname, age: $age, address: $address';
  }
}

void main() {
  Rectangle rectangle = Rectangle(height: 10, width: 5);
  print(rectangle.calculateArea());
  Rectangle r1 = rectangle.copyWith(width: 20);
  print(r1.calculateArea());

  Person person =
      Person(fname: "John", lname: "Doe", age: 30, address: "123 Main St");
  // print({person.fname, person.lname, person.age, person.address});
  print(person);
  Person person1 = person.copyWith(fname: "Jane");
  print(person1.fname);
}
