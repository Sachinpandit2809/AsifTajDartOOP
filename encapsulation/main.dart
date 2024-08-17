import 'test.dart';

void main() {
  Test test = Test('sachin', 12);
  test.displayInfo();

  test.setAge = 20;
  print(test.age);
  print(test.name);
}
