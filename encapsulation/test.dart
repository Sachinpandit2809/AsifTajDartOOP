class Test {
  String _name;
  int _age;
  String get name => _name;
  int get age => _age;
  set setName(String name) {
    _name = name;
  }

  set setAge(int age) {
    _age = age;
  }

  Test(this._name, this._age);
  void displayInfo() {
    print("the name of the Student is '$_name' and his age is '$_age' ");
  }
}
