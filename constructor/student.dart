void main() {
  List<Student> students = [
    Student("sachin", 343),
    Student("suman", 343),
    Student("Spana", 343),
    Student("raj", 343),
  ];
  for (var student in students) {
    print(student.name);
  }
}

class Student {
  String? name;
  int? roll;
  Student(String name, int roll) {
    this.name = name;
    this.roll = roll;
    print("the name of the Student is '$name' and his roll is '$roll'");
  }
}
