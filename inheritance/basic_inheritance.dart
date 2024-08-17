void main() {
  Student student = Student();
  student.department = "BCA";
  student.enrollment = "AJU/221797";
  student.age = 21;
  student.name = "Sachin pandit";

  student.printPersonDetails();
  student.printStudentDetails();
}

class Person {
  String? name;
  int? age;
  void printPersonDetails() {
    print("the name of person is  '$name' and his age is '$age' ");
  }
}

class Student extends Person {
  String? enrollment;
  String? department;
  void printStudentDetails() {
    print(
        "the enrollment of ${super.name} is '$enrollment' and department is '$department");
  }
}
