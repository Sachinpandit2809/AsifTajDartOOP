

void main() {
  Person person = Person("sachin", Gender.male);
  print(person.gender.name);
}

enum Gender { male, female, other }

class Person {
  String name;
  Gender gender;
  Person(this.name, this.gender);
}
