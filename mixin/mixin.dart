// mixin is a phenomena that provide a functionality to
// use the code of itSelf in other  classes with the use of with key word
//properties
// can't be create object
// can't be create constructor

void main() {
  Person person = Person("sachinPandit2809@gmail.com", "@prd");
  person.displayPersonInformation();
}

class Person with Logger, validation {
  String email, password;
  Person(this.email, this.password);

  void displayPersonInformation() {
    if (validate(password) != null) {
      log(validate(password).toString());
    } else {
      log("email of the person is '$email' and his password is '$password'!");
    }
    // print("email of the person is '$email' and his password is '$password'!");
  }
}

mixin Logger {
  void log(String data) {
    print(data);
  }
}

mixin validation {
  String? validate(String value) {
    if (value.isEmpty) {
      return "password is empty";
    }
    if (value.length < 6) {
      return 'password must be 6 character';
    }
    return null;
  }
}
