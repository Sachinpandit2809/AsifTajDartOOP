void main() {
  FirstClass firstClass = FirstClass();
  firstClass.printInformation();

  firstClass.name = 'sachin Pandit';
  firstClass.fatherName = 'mahesh Pandit';
  firstClass.roll = 343;
  firstClass.printInformation();
}

class FirstClass {
  String? name;
  String? fatherName;
  int? roll;

  void printInformation() {
    print("my name is ->${name}");
    print("my father name is ->${fatherName}");
    print("my roll Number is -> ${roll}");
  }
}
