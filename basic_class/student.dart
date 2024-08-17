

void main() {
  Student student = Student();
  student.department = "BCA";
  student.grade = "A";
  student.name = "Sachin";
  student.showStudentDetails();
  student.updateGrade("A+");
}

class Student {
  String? name;
  int? roll;
  String? department;
  String? grade;

  void showStudentDetails() {
    print(
        "Student name $name \nStudent department $department \nStudent Roll no $roll");
  }

  void updateGrade(String newGrade) {
    grade = newGrade;
    print("the grade of $name is being Updated to '$grade'");
  }
}
