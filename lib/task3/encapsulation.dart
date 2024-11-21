class Student {
  String _name = ""; // Private field

  // Setter method to set the name
  void setName(String name) {
    _name = name;
  }

  // Getter method to get the name
  String getName() {
    return _name;
  }
}

void main() {
  Student student = Student();
  student.setName("Alice");
  print("Student Name: ${student.getName()}");
}
